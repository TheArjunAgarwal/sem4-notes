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
    The prof email is #link("mailto: kocherlakota@cmi.ac.in")[kocherlakota\@cmi.ac.in]. 
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

= Truncation and Round-off errors
Truncation errors is taking a large numbers and limiting them. For example, $integral_(-oo)^(oo)$ can be truncated to $integral_(-10^10)^(10^10)$.

Truncation errors can typically be estimated but often involves hard to estimate but unknown quantities.

#example[
  Consider computing the derivative:
  $
  f'(x) = (f(x+h) - f(x))/h
  $
  Unfortunately, we can't come infinitely close to $0$ on a computer and there is a finite $h$ we are stuck with. So what is our error?

  $
  f(x_i + h) = sum_(k=0)^n (f^(k) (x_i))/(k!) h^k + R_(n+1) (x_i, h)\
  => R_(n+1) = (f^(n+1) zeta)/((n+1)!) h^(n+1) = cal(O)(h^(n+1))
  $
  for some $zeta in (x_i, x_(i+1))$ (by MVT or Rolle).

  Now notice,
  $
  f(x+h) = f(x) + f'(x) h + R_2 (x, h)\
  => (f(x+h)-f(x))/h = f'(x) + R_2(x,h)/h\
  => "error" = cal(O)(h)
  $

  Thus, the error is $cal(O)(h^n)$.
]

Typically there is some parameter governing the truncation error (in the above case it was $h$). A practical technique for estimating truncation error is to vary this parameter and observe the computer result. If they settle down or converge sufficiently, then we can stop the computation and accept the result.

#definition[
  The order of convergence is the rate at which truncation error tends to $0$ as the parameter varies. We can define this using the big-oh notation.
]
