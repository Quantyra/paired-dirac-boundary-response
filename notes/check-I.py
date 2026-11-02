#!/usr/bin/env python3
# Numerical check of I = int_0^inf R3(s^2) ds / s^8 = (1/2) int_0^inf x^(-9/2) R3(x) dx
# with x = e^u:  I = (1/2) int_{-inf}^{inf} e^(-7u/2) R3(e^u) du.
#
# R3(x) = (1/2) int_0^1 [ H(a x) - (a x)^3/3 ] dalpha,  a = alpha(1-alpha),
# H(y) - y^3/3 = -y^4/8 + y^5/30 - y^6/144 + ...  (series used for small y to
# keep the quartic cancellation exact in floating point).
import math

PI = math.pi

def Hm(y):
    """H(y) - y**3/3 with exact cancellation for small y."""
    if y < 0.05:
        return -y**4/8.0 + y**5/30.0 - y**6/144.0 + y**7/840.0 - y**8/5760.0
    H = y*y/2.0 - 1.0 + (1.0 + y)*math.exp(-y)
    return H - y**3/3.0

def R3(x, nalpha=200):
    s = 0.0
    h = 1.0/nalpha
    for i in range(nalpha):
        a = (i + 0.5)*h
        w = a*(1.0 - a)
        s += Hm(w*x)
    return 0.5*s*h

def integrand(u):
    return math.exp(-3.5*u)*R3(math.exp(u))

def simpson(U, N):
    h = 2*U/N
    tot = 0.0
    for i in range(N+1):
        u = -U + i*h
        f = integrand(u)
        w = 1 if i in (0, N) else (4 if i % 2 == 1 else 2)
        tot += w*f
    return 0.5 * tot * h/3.0

target = -5.0*PI**1.5/49152.0
print("target -5 pi^(3/2)/49152 = %.12e" % target)
for U, N in ((20.0, 2000), (40.0, 4000), (60.0, 6000), (80.0, 8000)):
    I = simpson(U, N)
    print("U=%5.1f N=%5d  I = %.12e   I/target = %.6f" % (U, N, I, I/target))
