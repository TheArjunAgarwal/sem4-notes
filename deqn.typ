#import "modules/notes.typ": *
#import "@preview/finite:0.5.0": *
#import "@preview/plotst:0.2.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: thm-rules

#let boxed = markrect
#let pm = $plus.minus$

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

I get off my curly $cal(X)'s$(ex's). There is no pun there.#footnote[Lesson is to not make ex jokes in algebra class. Too much risk of pun not intended.]

Any comments? Any comments about my $x$? \<To Adie\> I know your name is also Aditya but that doesn't give you the right to comment about my $x$. Only I have that right. And the left.

One should be careful. Being extra careful doesn't hurt. Maybe sometimes it does. Like when I am writing my papers, I feel I am being a little too careful. I should let my intuition carry the boat. 

I had to leave my fellowship for a while, but now I am back in white (he was wearing the Galois in Action TShirt), like Gandalf. I had to fight some Balrogs but now I am back.

As you might remember, I fixed the clock on day 1. Perhaps fixing your clocks is the harder part.

There is a complex analogue of the story, that is no more complex than the real part.

If something is nilpotent, I can compute it in finite time so I have no problems. In that regard, outside I have $99$ but this ain't one of them. My 50 Cents for you.

\<Jumping up and down and moving linearly, comparative to a frog\> I can just do $x + x^2/2 + x^3/3! + dots$ and it has to terminate by $2n$.

But we would like to have a bound on $N$, I don't want to do say $20000$ computations manually. \<me: Won't you use a computer for that\>, In that case, million cross million matrices. Arey, point ko samjho. There has to always be a hard bound. That's why I carry a hard bound. \<taps his notebook\>

This answers Aditya's question. Your Aditya I mean. I have many question which no one can answers.

The center is hard to understand. It's likes coming close but never converging. It's like friendzone. A lot of $x$'s have been friendzoned.

(Adie asks for the quiz at the begining of the class) Have you never been to my class before? Or was it your evil twin? \<He could be the evil twin\> Maybe they both are evil. But given this twin is coming to Differential Equations, I don't think he is evil. \<Engineers like DEQN.\> Hmm, They are differential in the way they do things.

It's going to be a beatiful quiz. A big beatiful quiz. Nobody makes quizzes like me.

(Negi keeps his phone on the board, pre-emptivly for the quiz) I have had a close association to CMI but this is a first. Now I have a story to tell, I once had a batch that had a bunch of weirdos. No, no. I should not say this. CMI is the place for all of you. I have no issues, can't say that for other professors.

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
  => X(t) = mat(e^(-t), 0; 0, e^(2 t)) X(0)
  $
  This works in diagonal matrices. But what about arbitrary matrices? We will see it next time.#footnote[Prof. Karnataki was interrupted by Prof. Madhavan...] 

=  Friday 16 Jan, 2026
== Recap
Consider
  $
  X' = mat(-1, 0; 0, 2) X;\
  => X(t) = mat(e^(-t), 0; 0, e^(2 t)) X(0)
  $
  As function of $x_1, x_2$, solution curves llie on $y = k/x^2$ where $k = c_1 ^2 c_2$.

== Non Diagonal Matrices
*Recall* If $lambda_1, lambda_2, dots, lambda_n$ are real distinct eigenvalues of $n times n$ matrix $A$, then there exists an invertible $n times n$ matrix such that
$
P^(-1) A P = "diag"(lambda_1, lambda_2, dots, lambda_n)
$

If $X' = A X$, define $Y = P^(-1) X$. Then $
Y' = P^(-1) X' = P^(-1) A X = (P^(-1) A P) (P^(-1) X)\
=> Y' = (P^(-1) A P) Y\
=> Y(t) = "diag"(e^(lambda_1 t), dots, e^(lambda_n t)) Y(0) = E(t) Y(0)\
=> X(t) = P E(t) P^(-1) X(0)
$

#lem[
  $X' = A X$. Suppose $V_0$ is an eigenvector for $A$ with eigenvalue $lambda in RR$. Then $x(t) = e^(lambda t) V_0$  is a solution to the system. 
]
#proof[
  This is because $X'(t) = lambda e^(lambda t) V_0 = e^(lambda t) (lambda V_0) = e^(lambda t) (A V_0) = A X(t)$
]

#example[
  Consider $x'_1 = - x_1 - 3 x_2$ and $x'_2 = 2 x_2$. This gives
  $
  A = mat(-1, -3; 0, 2)
  $
  This gives the eigenvalues $lambda_1 = -1, lambda_2 = 2$ and the corresponding eigenvectors $V_1 = mat(1;0), V_2 = mat(-1; 1)$. Furthermore,
  $
  P = mat(1, -1; 0, 1) => P^(-1) = mat(1,1;0,1)
  $
  #remark[
    Something worth remembering is that upper triangular matrices with diagonal being equal are inverted by just taking negative of all off diagonal elements.
  ]
  $
  P^(-1) A P = mat(-1 , 0; 0, 2) => y'_1 = - y_1, y'_2 = 2 y_2
  $
  Then,
  $
  x(t) = P mat(e^(-t), 0; 0, e^(2 t)) P^(-1) X(0)\
  => x_1 (t)= c_1 e^(-t) + c_2 (e^(-t) - e^(2 t)); x_2 (t)= c_2 e^(2 t)
  $
]
== Phase Potraits
#todo[Phase Potraits]

#defn(title : "Equilibrium Definition")[
  If $det A != 0$, $(0,0,dots,0)$ is the only equilibrium solution. If $det A = 0$, they will correspond to the kernel of $A$
]

#defn[
  If $A$ has negative eigenvalue $lambda_1 , lambda_2, dots lambda_n$. and positive eigenvalue $lambda_(k+1), dots, lambda_(n)$ all distinct. Let ${v_1, v_2, dots, v_n}$ be the corresponding eigenvectors. Then stable subspace refers to:
  $
  E^"s" = "span" {v_1, dots, v_k}\
  E^"un" = "span" {v_(k+1), dots, v_n}
  $
]
== Matrix Exponentials
We need convergence of $L(RR^n) = "subspace of linear operators" RR^n --> RR^n$

Recall that *Operator Norm*: $T in L(RR^n), ||T|| : = max_(|x| <= 1) |T(x)|$

#lem[
  For $S, T in L(RR^n)$, $x in RR^n$. 

  (a) $||T|| > 0$ and $||T || = 0 <==> T equiv 0$

  (b) $||T|| = |k| ||T||$ for $k in RR$

  (c) $||S + T|| <= ||S|| + ||T||$

  (d) $||T(x)|| <= ||T|| |x|$

  (e) $||T S|| <= ||T|| ||S||$

  (f) $||T^k|| <= ||T||^k$ for $k in NN$
]

#defn[
  $T_k --> T$ if $forall epsilon >0, exists N "s.t."$
  $
  ||T_k - T|| < epsilon forall k >= n
  $
]
#thm[
  Given $T in L(RR^n)$ and $t_0 > 0$,
  $
  sum_(k = 0)^oo (T^k t^k)/(k!) "converges absolutely and uniformly" forall |t| <= t_0
  $
]
#proof[
  Let $||T|| = a$
  $
  || (T^k t^k)/k! || <= (||T||^k |t|^k)/k! = (a^k |t|^k)/ k!
  $
  Since $sum_(k=0)^oo (a^k t_0^k)/k! = e^(a t_0)$, it follows from M test that it indeed coverges for $|t| < t_0$.
]

#defn[
$  
e^T := sum_(k = 0)^oo (T^k)/k! in L(RR^n)
$
]
Notice, $||e^T|| <= e^(||T||)$

#defn[
  For a matrix $A$, $
  e^(A t) = sum_(k = 0)^oo (A^k t^k)/k! in L(RR^n)
  $
]
Notice, $||e^(A t)|| <= e^(||A t||)$

#prop[
  If $S = P T P^(-1)$, then
  $
  e^S = P e^T P^(-1)
  $
]
#cor[
  If $P^(-1) A P = "diag" (lambda_1, lambda_2, dots, lambda_n)$ then $e^(A t) = P e^("diag" (lambda_1, lambda_2, dots, lambda_n)) P^(-1)$
]
#prop[
  If $S, T in L(RR^n)$ that commute, then $e^(S+T) = e^S e^T$
]
#proof[
  If $S T = T S$, then by binomial theorem, $
  (S+T)^n = n! sum_(j+k = n) (S^i T^k)/(j! k!)\
  therefore e^(S+T) = sum_(n=0)^oo sum_(j+k = n) (S^j T^k)/(j! k!) = e^S e^T
  $
]

#cor[
  $(e^T)^(-1) = e^(- T)$
]

#cor[
  If $A = mat(a, -b; b, a)$, $e^A = e^a mat(cos b, -sin b; sin b, cos b)$
]
#proof[
Let $lambda = a + b i$, write $A^k$ in terms of $Re(lambda^k)$ and $Im(lambda^k)$
]

#cor[
  If $A = mat(a,b; 0,0)$, $e^A = e^a mat(1,b; 0, 1)$
]
#proof[
  $A = a I + b$ where $B = mat(0,b; 0, 0)$.

  Then $a I$ and $B$ commute
  $
  e^A = e^(a I) e^b = e^a e^B  = e^a (I + B + 0 + dots) = e^a mat(1,b; 0, 1)
  $
]

For any invertible $2 times 2$ matrix $A$, matrix of $e^(A t) = P e^(B t) P^(-1)$ where
$
e^(B t) = cases(
  mat(e^(lambda t), 0; 0, e^(mu t)), e^(lambda t) mat(1, t; 0, 1), e^(at) mat(cos b t, - sin b t; sin b t, cos b t)
)
$

= Tuesday 27 Jan, 2026
#note[
Prof. Karnataki is away attending a very important conference in Mumbai, which just happened to be conveniently located near a Linkin Park concert. Even though the tickets sold out in minutes and conferences are announced much later, miracles do happen. Therefore, Prof. Priyavrat will be revising the last class.
]

= Thursday 29 Jan, 2026
#note[
  Prof. Priyavrat in revision mode.
]

= Tuesday 2 Feb, 2026
#note[
  #todo[]
]

= Thursday 5 Feb, 2026

#thm[
  Let $A$ be a real $2n times 2n$ matrix with complex eigenvalues $lambda_j = a_j + i b_j$, $overline(lambda_j) = a_j - i b_j, j = 1, 2, dots, n (b_j = 0)$. Then there exists a generalized complex eigenvectors $w_j = u_j + i v_j$, $overline(w_j) = u_j - i v_j$ such that $P = mat(v_1 u_1, v_2 u_2, dots, v_n u_n)$ is invertible and $A = S + N$ such that:
  $
  P^(-1) S P = "diag" mat(a_j, b_(-j); b_j, a_j),
  $
  $N$ is nilpotent of order $k <= 2n$ and $S$ and $N$  commute.
]

*Recall* $2 times 2$ matrix $A$, repeated eigenvalues $lambda$, only $1$ eigenvector  $v_1$ then in $v_1, v_2$ basis ($v_2$ is arbitrary) then matrix $A$ in this basis is $mat(lambda, b; 0, lambda)$. 

#thm[
  Let $A$ be a real $n times n$ matrix with real eigenvalues $lambda_j, j = 1, 2, dots, k$, complex eigenvalues $mu_j = a_j + i b_j, overline(mu_j) = a_j - i b_j, j = k + 1, dots, (n+k)/2$. Then there exists a basis ${v_1, dots, v_k, t_(k+1) s_(k+1), dots, t_((n+k)/2) s_((n+k)/2)}$ for $RR^n$ such that $P = mat(v_1, dots, v_k, t_(k+1) s_(k+1), dots, t_((n+k)/2) s_((n+k)/2))$ is invertible and $P^(-1) A P = "diag"(B_1, B_2, dots, B_k)$ where $B_j$ for real eigenvalue $lambda$ is of the form:
  $
  B = mat(
    lambda, 1, 0, 0, dots, 0;
    quad, lambda, 1, 0, dots, 0;
    ,, lambda, 1, dots, 0;
    , , , dots.down , dots.down, dots.v;
    ,,,, lambda,1;
    ,,,,, lambda
  )
  $ 
]
#example[
  For complex eigenvalue $lambda = a + i b$,
  $
  B = mat(
    D, I_2, 0, 0, dots, 0;
    quad, D, I_2, 0, dots, 0;
    ,, lambda, D, dots, 0;
    , , , dots.down , dots.down, dots.v;
    ,,,, D,I_2;
    ,,,,, D
  ) 
  $
  where $D = mat(a, -b; b, a), I_2 = mat(1, 0; 0, 1), 0 = mat(0,0; 0,0)$

  $
  e^(B t) = e^(lambda t) mat(
    1, t, t^2/2!, t^3/3!, dots, t^(m-1)/(m-1)!;
    , 1, t, t^2/2!, dots, t^(m-2)/(m-2)!;
    ,, 1, t, dots, t^(m-3)/(m-3)!;
    , , , dots.down , dots.down, dots.v;
    ,,,, 1,t;
    ,,,,, 1)
  $
]
#example[
  Say $N = mat(0, 1, 0; 0, 0, 1; 0, 0, 0)$ then $N^2 = mat(0, 0, 1; 0, 0, 0; 0, 0, 0)$.

  Note, $N^3$ will be $0$ as the $1$ will fly out.
]

#example[
  $
  e^(B t) = e^(a t) mat(
    R, R t, R t^2/2!, R t^3/3!, dots, R t^(m-1)/(m-1)!;
    , R, R t, R t^2/2!, dots, R t^(m-2)/(m-2)!;
    ,, R, R t, dots, R t^(m-3)/(m-3)!;
    , , , dots.down , dots.down, dots.v;
    ,,,, R,R t;
    ,,,,, R)
  $
  where $R = mat(cos b t, - sin b t; sin b t, cos b t)$
]
== Stability Theory
Let $w_j = s_j + i t_j$ be (generalized) eigenvectors corresponding to $lambda_j = a_j + i b_j$, with $b_j$ allowed to be zero $(t_j = arrow(0))$. 

#defn[
  - $E^S = "Span" {s_j, t_j | a_j < 0}$ is the stable subspace
  - $E^C = "Span" {s_j, t_j | a_j = 0}$ is the center
  - $E^U = "Span" {s_j t_j | a_j > 0}$ is the unstable subspace
]

#example[
  $
  A = mat(0, 1, 0; -1, 0, 0; 0, 0, -1)
  $
  As the matrix is pre-blocked, we have the eigenvalues $pm i, -1$

  Then, $X(t) = x_0 vec(cos t, - sin t, 0) + y_0 vec(sin t, cos t, 0) + z_0 e^(-t) vec(0,0,1)$.

  This is stable along $z$ axis and the center is $x y$ plane.

  In this case, the phase potrait is a bunch of cylinderical helices around the $z$ axis with a exponentially decreasing pitch. The $z$ axis just points to $0$. 

  Notice, solutions starting in stable subspace stays in the stable subspace all the the time.
]
A question we have is the above remark true for the other subspaces.

#defn[
  $e^(A t) : RR^n -> RR^n$ is called the flow of the linear system. If all eigenvalues have non-zero real part, this is called hyperbolic flow.
]
#thm[
  $E^S, E^U, E^C$ are invariant under the flow $e^(A t)$ and $RR^n = E^S plus.o E^U plus.o E^C$.
]

= Tuesday 10 Feb, 2026
#note[
  I had a rust quiz just next class and hence, didn't show up.
]

= Thursday 12 Feb, 2026
== Existence and Uniqueness
$J$ interval in $RR$, $0 in J$, $X : J -> E subset RR^n$.

$X'(t) = F(X(t)), X(0) = X_0$.

Integrating, we have:
$
X(t) = X_0 + integral_0^t F(X(s)) dif s
$

This seems sort of like a continuous recursive equation. We would like to somewhat substitute $X(t)$ again and again but we can't really deal with $F(integral X(t) dif x)$ type stuff.

*Assumptions* $overline(B_epsilon)$ closed ball of radius $epsilon > 0$ at $X_0$. 

$F$ has a Lipschitz constant $K$ on $overline(B_epsilon)$.

$|F(X)| < M$ on $overline(B_epsilon)$, we choose $a > 0$ such that $a < min(epsilon/M, 1/K)$ and let $J = [-a, a]$.

#idea(title: "Picard Iteration")[
  Iteratively substitute for $X(s)$
]

$
u_0 (t) &= X_0 &quad "For" t in J, "define"\
u_1 (t) &= X_0 + integral_0^1 F(u_0(s)) dif s\
&= X_0 + integral_0^t F(X_0) dif s &quad "Since" |t| <= a, |F(X_0)| <= M, "it follows that"\
&= X_0 + t F(X_0) &quad u_0(t) = |u_1 (t) - X_0| <= a M < epsilon
$
Define by induction, $u_(k+1) (t) := X_0 + integral_0^t F(u_k (s)) dif s$.

#claim[
  $
  |u_(k+1)(t) - u_k (t)| <= (a K)^k L "for some constant" L
  $
]
#proof[
Let $L = max_(-a <= t <= a) |u_1 (t) - u_0 (t)|$.

Then $L <= a M$.

(B)
Then $
u_2 (t) - u_1 (t) | &= |integral_0^t [F(u_1 (s)) - F(u_0 (s))] dif s |\
&<= integral_0^t K |u_1 (s) - u_0 (s)| dif s\
&<= a K L
$

(S) Assume by induction, $|u_k - u_(k-1)| <= (a K)^(k-1) L$

Then,
#todo[]

And we are done, by induction!
]

Notice, $alpha := a K < 1$ then choose 
#todo[]
Thus, UNIFORM CONVERGENCE!

Notice, $u_k -> X$ as $k -> oo$

Since, $u_(k+1) (t) = X_0 + integral_0^t F(u_k (s)) dif s$. Take limit $k -> oo$
$
X(t) &= X_0 + lim_(k -> oo) integral_0^t F(u_k (s)) dif s\
&= X_0 + integral_0^1 lim_(k -> oo) F(u_k (s)) dif s\
&=^"uniform"_"convergence" X_0 + integral_0^t F(X(s)) dif s
$

*Uniqueness?* Suppose $X, Y$ are two solutions with $X(0) = Y(0) = X_0$. Let $Q := max_(t in J) |X(t) - Y(t)|$ attained at $t_1 in J$ (compactness).

$
Q = |X(t_1) - Y(t_1)| &= | integral_0^t [X'(s) - Y'(s)] dif s|\
&<= integral_0^t |F(X(s)) - F(Y(s))| dif s \
&<= integral_0^t K | X(s) - Y(s)| dif s\
&<= a K Q
$
But $a K < 1 => Q = 0$.

#example[
  $X' = mat(0, 1; -1, 0) X, X_(0) = mat(1;0)$.

  $
  u_0 (t) = mat(1; 0)
  $, 
  
  $
  u_1 (t) &= mat(1;0) + integral_0^t F(mat(1;0)) dif s\
  &= mat(1;0) + integral_0^t mat(0; -1) dif s \
  &= mat(1; -t)  
  $

  
]