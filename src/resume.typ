#import "@preview/basic-resume:0.2.8": *

#let name = "Curro Campuzano Jiménez"
#let location = "Brussels, Belgium"
#let email = "curro.campuzanojimenez@uantwerpen.be"
#let github = "github.com/currocam"
#let linkedin = "linkedin.com/in/currocam"
#let personal-site = "currocam.github.io"

#show: resume.with(
  author: name,
  email: email,
  github: github,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
  location: location
)

== Who am I
I am a PhD student at the Svardal lab (Antwerp University). I am currently working on developing tools to study speciation from genomic data. Before, I worked in the evolutionary ecology of thyme and in meta-transcriptomics to study the microbial diversity of the ice sheet. I have experience in high-performance computing for data analysis and scripting in R, Julia, and Python. I am very interested in reproducible research, Bayesian statistics, and scientific computing.

== Experience

#work(
  title: "PhD student at Svardal lab",
  location: "Antwerp, Belgium",
  company: "University of Antwerp",
  dates: dates-helper(start-date: "September 2024", end-date: "Present"),
)

I aim to understand the population dynamics of invasions and how they can affect the process of speciation. I am interested in simulation-based methods, machine learning, and ancestral recombination graphs. Currently, I am working on inferring very recent demographic processes from genomic data.

#work(
  title: "Student programmer",
  location: "Roskilde, Denmark",
  company: "Environmental Sciences Department, Aarhus University",
  dates: dates-helper(start-date: "September 2022", end-date: "July 2024"),
)
I focused on enhancing the reproducibility and efficiency of the bioinformatics pipelines of the sequencing center. Specifically, I worked on automating and containerizing pipelines on #link("https://github.com/AU-ENVS-Bioinformatics/TotalRNA-Snakemake")[large-TotalRNA meta-transcriptomics], long-reads amplicon sequencing, and #link("https://github.com/AU-ENVS-Bioinformatics/IlluminaSnakemake")[whole-genome sequencing and genome mining]. Additionally, I co-authored several articles, including one that was awarded the #link("https://academic.oup.com/femsec/article/99/11/fiad119/7288651")[best article at the 2023 FEMS Microbiology Ecology award].

#work(
  title: "MSc thesis",
  location: "Aarhus, Denmark",
  company: "Bioinformatics Research Center, Aarhus University",
  dates: dates-helper(start-date: "January 2023", end-date: "July 2024"),
)
I was supervised by Thomas Bataillon and Genis Garcia Erill. I worked on a set of methods named genomic offsets that aim to predict population vulnerability due to climate change. I evaluated their limitations using simulated data and expanded the quantitative genetics theory behind them.  We are currently finalizing a manuscript, and I also published an open-source Julia package to perform genomic offset analysis(#link("GenomicOffsets.jl")).

#work(
  title: "Internship",
  location: "Aarhus, Denmark",
  company: "Bioinformatics Research Center, Aarhus University",
  dates: dates-helper(start-date: "February 2023", end-date: "July 2023"),
)
Supervised by Thomas Bataillon, I worked in obtaining a chromosome-level assembly of Mediterranean thyme using PacBio HiFi. I improved the highly fragmented de novo assembly by scaffolding utilizing the genome of a closely related species(#link("https://currocam.github.io/BiRC-Thyme/#/title-slide")[slides available for more information]).

#work(
  title: "Internship",
  location: "Granada, Spain",
  company: "Andalusian Research Institute in Data Science and Computational Intelligence",
  dates: dates-helper(start-date: "February 2022", end-date: "July 2022"),
)
Supervised by Coral del Val, I worked in developing tools that use hidden Markov models’ profiles to analyze homologous sequences. I improved the annotation of a cancer therapeutic target (Fascin protein), and I trained a Random Forest classifier based on the amino acid sequence. Using LIME and Shapley Values, I also found that my model paid particular attention to the presence of specific motifs in the binding sites (without prior information about them).

#work(
  title: "Student programmer",
  location: "Granada, Spain",
  company: "Physical Chemistry Department, University of Granada
",
  dates: dates-helper(start-date: "February 2022", end-date: "July 2022"),
)
I worked with Irene Luque and Coral del Val in studying protein coevolution using a technique known as Statistical Coupling Analysis. I found two putative groups of coevolving residues that are potentially responsible for the allosterism of the Fascin protein. 

== Education

#edu(
  institution: "Aarhus University",
  location: "Aarhus, Denmark",
  dates: dates-helper(start-date: "2022", end-date: "2024"),
  degree: "Master of Science in Bioinformatics",
)
- Highest grade in the courses Evolutionary Thinking, Data Science in Bioinformatics, Statistical and Machine Learning, Algorithms in Bioinformatics, and in my MSc thesis.
- PhD course: Next Generation Sequencing Data Analysis.

#edu(
  institution: "University of Granada",
  location: "Granada, Spain",
  dates: dates-helper(start-date: "2018", end-date: "2022"),
  degree: "Degree in Biotechnology ",
)
- Research initiation grant.
- I graduated with honors in my bachelor's thesis in Bioinformatics.
