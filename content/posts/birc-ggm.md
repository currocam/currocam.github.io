+++
date = '2024-01-18T18:01:44+02:00'
title = 'On the (un)reliability of learning Gaussian graphical models from microbial abundance data'
+++

I explored the reliability of microbial network inference. This topic, which is gaining popularity, has many overlooked issues and open challenges. In particular, I dug into the usage of Gaussian graphical models. I evaluated the performance of [SPIEC-EASI](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004226) (a popular method with more than 1300 citations at the time of writing) and a novel Bayesian method based on [BDgraph](https://www.jstatsoft.org/article/view/v089i03). I concluded that most analysis would require in the order of thousands of samples (which is often not the case in environmental microbiology studies).

The [report](https://github.com/currocam/microbial-network-inference/blob/main/report/report.pdf), [slides](https://currocam.github.io/microbial-network-inference/#/title-slide) and all [source code](https://github.com/currocam/microbial-network-inference/) are publicly available on GitHub if you want to know more!
