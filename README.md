# Introduction

Algol code from [GolubWelsch].

# Install

Needs MARST [marst].

    $ make

Builds libgaussquadrule.a in [lib](lib/) and driver codes in
[example](example/).

# Calculation of Gauss quadrature rules

Abscissas and Weights of the Gauss-Laguerre Quadrature Reule with
alpha = -0.75 and N = 10:

     $ echo 10 -0.75 | ./example/table
     2.766655867079714e-02 2.566765557790772e+00
     4.547844226059476e-01 7.733479703443399e-01
     1.382425761158597e+00 2.331328349732201e-01
     2.833980012092694e+00 4.643674708956704e-02
     4.850971448764914e+00 5.549123502036259e-03
     7.500010942642827e+00 3.656466626776364e-04
     1.088840802383440e+01 1.186879857102449e-05
     1.519947804423760e+01 1.584410942056775e-07
     2.078921462107011e+01 6.193266726796800e-10
     2.857306016492211e+01 3.037759926517505e-13

- [GolubWelsch] G.H. Golub and J.A. Welsch, "Calculation of Gauss quadrature rules", Math. Comp. 23 (1969), 221-230
- [marst] https://www.gnu.org/software/marst
