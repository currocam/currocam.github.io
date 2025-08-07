+++
date = '2023-12-11T15:45:15+02:00'
title = 'Efficient heuristics for Neighbor-joining in Rust (software)'
+++

As part of my Master's program at [BiRC](https://birc.au.dk/), I made a Rust crate (jargon for package/library) for building phylogenetic trees from large Phylip distance matrices using the [Neighbor-Joining](https://en.wikipedia.org/wiki/Neighbor_joining) algorithm.

Our goal was to implement an efficient command-line application that implemented the canonical algorithm (with similar optimization tricks as in [QuickTree](https://github.com/khowe/quicktree)) and the [RapidNJ](https://users-birc.au.dk/cstorm/software/rapidnj/papers/SimonsenOthers2008_WABI.pdf) heuristic with a twist: using [B-Trees](https://en.wikipedia.org/wiki/B-tree) rather than vectors. B-trees are (unsurprisingly) tree data structures that allow maintaining sorted data and perform insertions and deletions in $\mathcal O(\log n)$, with a larger constant factor than binary search trees, but minimizing cache-misses which makes them faster in modern computers.

I was pleased to find that my canonical implementation was significantly faster than QuickTree (kudos to Rust for that!) and that I was able to obtain some performance gains for very large matrices ($n>20000$) with my heuristic. Still, it's better to use the original implementation, although some work could be done to further improve it! To keep the tradition, I named my own program speedytree.

To be sure my implementation was correct, I elaborated an extensive suite of tests and explored the idea of [property testing](https://en.wikipedia.org/wiki/Software_testing#Property_testing). In this testing technique, you simulate some random input to your function and assert that some *property* of the output is true. In my case, I simulated distance matrices from an additive binary tree and asserted that the topology (and the branch length) of the inferred tree was maintained using appropriate distance measures.

A few months later, I was asked to publish it as a separate package so the Rust ecosystem could benefit from it (so I have at least one user!). As a result, I published it as [speedytree](https://crates.io/crates/speedytree) on crates.io.

```rust
use speedytree::DistanceMatrix;
use speedytree::{NeighborJoiningSolver, Canonical};
// Raw Phylip format
let input = "5
   a    0    5    9    9    8
   b    5    0    10    10    9
   c    9    10    0    8    7
   d    9    10    8    0    3
   e    8    9    7    3    0
".as_bytes();
let d = DistanceMatrix::read_from_phylip(input).expect("Invalid Phylip format");
// Canonical Neighbor Joining. Optimal for small problems.
let tree = NeighborJoiningSolver::<Canonical>::default(d)
  .solve()
  .expect("Failed to solve");
```

You can take a look at the [documentation of the crate](https://docs.rs/speedytree/0.1.0/speedytree/) or my [slides](https://github.com/currocam/speedytree/blob/557c86afb533a2c5333b33e8bd4a971ca51eea3c/speedytree_slides.pdf), which are publicly available on GitHub if you want to know more!
