fuction p = twomodegauss(m1,sig1,m2,sig2,A1,A2,k)
% TWOMODEGAUSS Generates a bimodal Gaussian function
% P = TWOMODEGAUSS(m1,sig1,m2,sig2,A1,A2,k) generates a bimodal,
% Gaussian-like function in the interval [0,1].P is a 256-element
%vector normalized so that SUM(P) equals 1. The mean and standard
%deviation of the modes are (M1,SIG1) and (M2,SIG2),respectively,
%A1 and A2 are the amplitue values of the two modes.since the
%output is normalized, only the relative values of A1 and A2 are
%important. K is an offset value that raised the "floor" of the
%function .A good set of values to try is M1= 0.15,SIG1 = 0.05,
%M2 = 0.75,SIG2 = 0.05,A1 = 1,A2 = 0.07 and K = 0.002

c1 = A1*(1/((2*pi)^0.5)*sig1);
k1 = 2*(sig1^2);
c2 = A2*(1/((2*pi)^0.5)*sig2);
k2 = 2*(sig2^2);
z = linspace(0,1,256);
p = k + c1*exp(-((z-m1).^2)./k1)+...
    c2*exp(-((z-m2).^2)./k2);
p = p./sum(p(:));
