#import "modules/notes.typ": *
#import "@preview/finite:0.5.0": *
#import "@preview/plotst:0.2.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: thm-rules

#let boxed = markrect

#show: noteworthy.with(
  paper-size: "a4",
  language: "EN",
  title: "Differential Equations",
  author: "Arjun Maneesh Agarwal",
  prof : "Aditya Karnataki",
  course-desc: [
    
  ],
  contact-details: "thearjunagarwal.github.io",
  toc-title: "Table of Contents"
)

= Aditya Karnataki's Wisdom
Good to see all of you here. #todo[Karnataki's comments on view, rooms and property and why he has a 6th floor office.]

Good to see you all on time, \<looking at the clock which is wrong\>. The clock is not on time. Let me fix it, once and for all. \<fixing the clock\>. Abh apna sahi time chal raha hai.

We will try to include everybody, mathmeatically and non-mathematically.

Kids at CMI are more interested in watching paint dry than solving Differential Equations. I was one of them, my prof was really, really terrible. The only thing I learned in that course was how to pass the course.

All chalks gather at four places. Eventually, all chalks will gather their. This is called a sink. We will see this chalk in motion now.

The variable with respect to which we differentiate will be $t$. I don't differentiate with $x$'s (ex's). I don't differentiate between my ex's. They are variable's with variable values (and costs). They are real, but sometimes complex.

There is $t$(tea) inside me and I liked it.

Always to lessen you headache, by making good choices. This is life gyaan, not only malthmeatical gyaan.

And that is a topic for other time. \<Adie looks at the clock\>. No need to look at the clock, I am ending the class.

I get off my curly $cal(X)'s$(ex's). There is no pun there.#footnote[Lesson is to not make ex jokes in algebra class. Too much risk of pun not intended.]l

= Tuesday 13 Jan, 2026
== Simplest Differential Equation
$
x' = a x
$
Here $x(t)$ us an unknown function. We normally deal with real valued functions of real variable $t$.

$x'$ represents $dif(x)/dif(t)$. $a$ is a parameter.

*We know* $x(t) = k e^(a t)$ is a solution, for any $k in RR$. This is by
$
integral (dif x)/x = integral a dif t
$

But we want to have all solutions.
#claim[
  All solutions are of the form $x(t) = k e^(a t)$.
]
#proof[
  If $u(t)$ is any solution, then $
  dif/(dif t) (u(t) e^(- a t)\
  = u'(t) e^(- a t) - a u(t) e^(-a t)\
  = e^(- a t) (u'(t) - a u(t))\
  = 0
  $
  Thus, $(u(t) e^(- a t)$ has derivative $0$ and is hence constant. Thus, $u(x) $ has to be of the form $k e^(a t)$.
]

But how do we resolve $k$? Simple, notice that $k = u(0)$ and hence, $boxed(u(t) = u(0) e^(a t))$. This is called the self contained form and in general we want that.

In fact $k = u(t_0) e^(- a t_0)$. If $v(t) = u (t - t_0) => v(t_0) = u(0)$ (this is called the translational invariance), so we can assume "initial condition" to be at $t > 0$.

#note[
  When $k=0$, $x(t) equiv 0$. Such initial conditions are called "Equilibrium Solution's" or "Equilibrium Points".
]
#defn[
  Initial conditions such that the solution is $x(t) equiv B$ identically are called Equilibrium Solutions or Equilibrium Points.
]
#image("Deqn-images/simp-tue13.png")

Here the purple line is our Equilibrium Point.

#defn(title:"Source and Sink")[
  If other curves diverge away from the Equilibrium point, we call it a source. If other curves had converged to this point, we would call it a sink.
]

== Population Dynamics
Differential Equations are used to model population growth. While our simple equation works for bacteria where there is no resource bound on their population. The same can't be said about mammals. There are bounds on how much the environment can support. Consider
$
x' = a x (1 - x/N)\
a, N > 0
$
#remark[
- When population is small, rate is (approx) proportional to the size of population.
- Population exceeds $N$, then rate is negative.
]
To make our lives easier, we will assume $N= 1$ by taking $x$ normalized as the percentage of 'ideal' population at time $t$.

This gives us:
$
x' = a x (1-x) = f_a (x) 
$
Here $f_a$ has the subscript to show dependence on $a$.

This is the first example of:
$
underbrace("First Order", "Only 1st \n derivative"), underbrace("autonomous", "RHS depends on x,\n but not explicitly on t"), underbrace("non-linear", "RHS is \n not linear") "differential equation"
$
#soln[
  $
  integral (dif x)/(x(1-x)) = integral a dif t\
  integral 1/x dif x + integral 1/(1-x) dif x = integral a dif t\
  x(t) = (K e^(a t))/(1 + K e^(a t))
  $
  where $K$ is constant of integration. Notice
  $
  K = (x(0))/(1 - x(0))
  $
  
  Thus, we can make a self contained form 
  $
  boxed(x(t) = (x(0) e^(a t))/(1 - x(0) + x(0) e^(a t)))
  $
  ]
  Notice, $x(t) equiv 1$ and $x(t) equiv 0$ are both equilibrium solutions.
  #todo[
    Drawing of sink and source
  ]
  Notice, $x(t) equiv 0$ is a source and $x(t) equiv 1$ is a sink.

  Notice, we can get all this via the slope field as well. A solution just follows one of the sets of arrows in the slope field.

  #todo[Slope Field]

  === Graph of $f_a (x), a x (1-x)$

  The roots $x= 0, x=1$; they are equilibrium points. 
  
  It is easy to compute that $f'_a (x) = a - 2x$. Notice,

  $
  f'_a (0) = a > 0\
  f'_a (1) = -a < 0
  $ 
  This is an analogue of derivative test and works on autonomous system.

  We could add time dependence to the RHS to model harvesting or selling off etc. But that is something we'll look at later. Let's move to some variable based math.

  == System of Differential Equations
  Consider 
  $
  x'_1 = f_1 (t, x_1, dots, x_n)\
  x'_2 = f_1 (t, x_1, dots, x_n)\
  dots.v\
  x'_n = f_1 (t, x_1, dots, x_n)\
  $
  *Assume*#footnote[For the sake of your sanity and mine] $f_i in C^(infinity)$ that is partial derivatives of all orders of every $f_i$ exists and are continuous.

  $
  X = mat(x_1;x_2; dots.v; x_n)
  $
  We can write this all as
  $
  X' = F(t, X) = mat(f_1(t,x_1, dots, x_n);f_2(t,x_1, dots, x_n);dots.v; f_n (t,x_1, dots, x_n))
  $

  A more general way could be:
  $
  X'(t) = F(t, X(t))
  $

  Unfortunately, there is no guarantee that a solution exists.

  One major theorem we will do close to the midsem will be that the solution always locally exists over $t$. The problem will be if we can stitch them together.

  Redefining some stuff,
  #defn[
    An equation is autonomous if $F(t,X) = F(X)$
  ]
  #defn[
    $X_0$ such that $F(X_0) equiv 0$ is equilibrium point coresponds to $X(t) equiv X_0$
  ]
  #remark(title: "Motivation")[
    The motivation for this comes from Physics or second order differential equations.
    $
    m x'' = f(x)\
    m x'' + b x' + k x = 0
    $
    The first comes from an obscure guy named Newton while the second is a Damped Harmonic Oscillation.

    We can write these as a system of equations.
  ]
  Let $y = x'$,
  $
  x'' + a x' + b x = 0, y = x'=>& x' = y\
& y' = -b x - a y
  $
  We can write
  $
  mat(x'; y') = mat(0,1;-b,-a) mat(x;y)
  $
  We will see how we can solve these later. In the last two minutes of this class, I will go for a simpler example.
  == Uncoupled Linear System
  Consider
  $
  X' = mat(-1, 0; 0, 2) X;\
  => X(t) = mat(e^(-t), 0; e^(2 t), 0) X(0)
  $
  This works in diagonal matrices. But what about arbitrary matrices? We will see it next time.#footnote[Prof. Karnataki was interrupted by Prof. Madhavan...] 
