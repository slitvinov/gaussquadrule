# Introduction

Algol code from [GolubWelsch].

# Install

Needs MARST [marst].

    $ make

Builds a library libgaussquadrule.a in [lib](lib/) and driver programs
in [example](example/). A driver program from the papere is
[example/gaussquadrule.a60](example/gaussquadrule.a60).

# Calculation of Gauss quadrature rules

Abscissas and weights of the Gauss-Laguerre quadrature rule with alpha
= -0.75 and N = 10 (Table in the paper). Computed using recurrent
relatinship:

     $ echo 10 -0.75 | ./example/recurrent | awk '{printf "%02d %s\n", NR, $0}'
     01 2.766655867079714e-02 2.566765557790772e+00
     02 4.547844226059476e-01 7.733479703443399e-01
     03 1.382425761158597e+00 2.331328349732201e-01
     04 2.833980012092694e+00 4.643674708956704e-02
     05 4.850971448764914e+00 5.549123502036259e-03
     06 7.500010942642827e+00 3.656466626776364e-04
     07 1.088840802383440e+01 1.186879857102449e-05
     08 1.519947804423760e+01 1.584410942056775e-07
     09 2.078921462107011e+01 6.193266726796800e-10
     10 2.857306016492211e+01 3.037759926517505e-13

Computed using moments:

     $ echo 10 -0.75 | ./example/moment | awk '{printf "%02d %s\n", NR, $0}'
     01 2.766655865361854e-02 2.566765557441376e+00
     02 4.547844223365491e-01 7.733479704606758e-01
     03 1.382425760414822e+00 2.331328351325242e-01
     04 2.833980010762454e+00 4.643674715138851e-02
     05 4.850971446840986e+00 5.549123513002220e-03
     06 7.500010940195398e+00 3.656466636045292e-04
     07 1.088840802097699e+01 1.186879860619383e-05
     08 1.519947804109692e+01 1.584410947206709e-07
     09 2.078921461777036e+01 6.193266747876431e-10
     10 2.857306016159728e+01 3.037759936902896e-13

- [GolubWelsch] G.H. Golub and J.A. Welsch, "Calculation of Gauss quadrature rules", Math. Comp. 23 (1969), 221-230
- [marst] https://www.gnu.org/software/marst
