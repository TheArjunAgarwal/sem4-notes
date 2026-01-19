#import "modules/notes.typ": *
#import "@preview/finite:0.5.0": *
#show: thm-rules


#show: noteworthy.with(
  paper-size: "a4",
  language: "EN",
  title: "Computational Physics",
  author: "Arjun Maneesh Agarwal",
  prof : "Prashant Kocherlakota and Ajit Mehta",
  course-desc: [
    The prof email is #link("mailto: kocherlakota@cmi.ac.in") [kocherlakota\@cmi.ac.in]. 
  ],
  contact-details: "thearjunagarwal.github.io",
  toc-title: "Table of Contents"
)

= Introduction
There are phases of a solution in physics. We begin with a physical problem, say the motion of mercury around the sun.

*Phase 1*: We then find a math model, say the Newtonian gravity equations.

*Phase 2*: This math model might not have analytical solutions. It normally doesn't. We hence move to a numerical model which approximates the analytical solutions in a finite number of arithmetic operation.

*Phase 3*: We then move to implementation.

Note, we are adding errors on each stage of this process. From modelling errors in Phase 1 to Approximation errors in phase 2 to computational errors in phase 3.

== An example
Consider 
