# import SciPy for nicer matrix usage
import scipy as sp
# import some more mathematical functions
from math import sin, cos, sqrt
from cmath import exp

def main(template_file, pars, vars):
    # we can also access pars and vars by name here
    theta12e = pars.theta12e
    s12e, c12e = sin(theta12e), cos(theta12e) 
    delta12e = pars.delta12e
    
    UTBM = sp.matrix([ 
        [-sqrt(2/3.), 1/sqrt(3),          0],
        [  1/sqrt(6), 1/sqrt(3),  1/sqrt(2)], 
        [  1/sqrt(6), 1/sqrt(3), -1/sqrt(2)] 
    ])
    Ue = sp.matrix([ 
        [c12e, s12e * exp(1j * delta12e),   0],
        [-s12e * exp(-1j * delta12e), c12e, 0],
        [0, 0, 1] 
    ])
    
    # m.H = hermitian transpose of m
    UPMNS = Ue.H * UTBM 
    
    # indices are 0-based!
    sin13 = abs(UPMNS[0,2])
    tan12 = abs(UPMNS[0,1] / UPMNS[0,0])
    tan23 = abs(UPMNS[1,2] / UPMNS[2,2])
    sin12 = tan12 / sqrt(1 + tan12 ** 2)
    sin23 = tan23 / sqrt(1 + tan23 ** 2)
    
    return [sin12, sin23, sin13]