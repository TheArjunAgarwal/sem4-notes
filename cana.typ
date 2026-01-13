#import "modules/notes.typ": *
#import "@preview/finite:0.5.0": *
#show: thm-rules

#let int = $integral$


#show: noteworthy.with(
  paper-size: "a4",
  language: "EN",
  title: "Complex Analysis",
  author: "Arjun Maneesh Agarwal",
  prof : "",
  course-desc: [
    We will study holomorphic and analytic functions $f : CC -> CC$. We will follow Sterin-Shakarchi's Princeton Lecture Series.
  ],
  contact-details: "thearjunagarwal.github.io",
  toc-title: "Table of Contents"
)
= Trailer of shit we will see?!
#definition(title: "Holomorphic (differentiation definition)")[
  A function is said to be holomorphic at a point $z in CC$ if
  $
  lim_(h -> 0) (f(z+h) - f(z))/(h)
  $
  exists in all the directions and agrees. In that case, $lim_(h -> 0) (f(z+h) - f(z))/(h) -> f'(z)$.
]
#definition(title : "Holomorphic (power series definition)")[
  A function is holomorphic if $f(z) = sum_(n=0)^oo a_n z^n$
]
We can obviously view $f : CC -> CC$ as $f_1 : RR -> RR$ and $f_2 : RR -> RR$. Also,
#thm[
  If a function is diffrentiable once at a point, it is diffrentiable infinitely.
]

Given a path $gamma$ in complex plane, we can integrate over it from $z_1, z_2 in gamma$ by finding a diffrentiable and continous function $h : [a,b] -> CC$ such that $h(a) = z_1$ and $h(b) = z_2$ then
$
int_gamma f(x) dif z = int_a^b f(h(t)) h'(t) dif t
$

#thm(title:"Cauchy's Theorem")[
  Given a closed curve $gamma$ in $CC$,
  $
  int_gamma f(x) dif z = 0
  $
]
#thm(title: "Cauchy's Integral Formula")[
  Given $f$'s value on the boundary of a disc $C$ (the disk is named $D$ and boundry is $C$) then:
  $
  f(z) = int_(C) (f(zeta))/(zeta - z), z in D
  $
]
#cor[
  $
  f^((n))(z) = n!/(2 pi) int_C (f(zeta))/((zeta - z)^(n+1))
  $
]
#definition(title: "Entire Function")[
  An Entire function that is holomorphic in $CC$
]
#thm(title: "Lioullvile")[
  A bounded entire function is constant.
]
#thm(title : "Schwarz Reflection Principle")[
  #todo[Google Karlo bhai]
]
= Preliminaries
$z in CC$