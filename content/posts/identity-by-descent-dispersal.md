+++
date = '2025-08-07T18:48:10+02:00'
title = 'IdentityByDescentDispersal.jl (software)'
+++

As part of my PhD research, I looked into the problem of inferring dispersal rates from spatial genomic data. I have developed `IdentityByDescentDispersal.jl`, a Julia package for estimating effective population density and per-generation dispersal rate from spatial patterns of identity-by-descent (IBD) blocks.

Building on the method proposed by [Ringbauer et al. (2017)](https://doi.org/10.1534/genetics.116.196220), the package provides an efficient implementation of the original scheme and extends it to handle more complex demographic scenarios. The documentation of the package is rather complete and includes a gentle introduction of the underlaying theory.

You can find the documentation at https://currocam.github.io/IdentityByDescentDispersal.jl/

We have submitted a manuscript describing the package to the [Journal of Open Source Software](https://joss.theoj.org). You can find the preprint at [arXiv](https://doi.org/10.48550/arxiv.2507.06964).
