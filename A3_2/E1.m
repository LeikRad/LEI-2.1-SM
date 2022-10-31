clear all

% A)

p = 2 + 3i;
q = 2 - 3i;
%[theta, rho] = cart2pol(real(p), imag(p))

pK = sqrt(real(p)^2+imag(p)^2);
pPsi = asin(imag(p)/pK);
pPolar = pK*(cos(pPsi) + i*sin(pPsi))

qK = sqrt(real(q)^2+imag(q)^2);
qPsi = asin(imag(q)/qK);
qPolar = q
fprintf("A)\np Polar: %f(cos(%f) + i*sin(%f)\nq Polar: %f(cos(%f) + i*sin(%f)\n", pK, pPsi,pPsi,qK,qPsi,qPsi)

% B)
a = p + q;
b = p - q;
c = p * q;
d = p / q;
e = sqrt(p);
f = sqrt(-p-q);
Arr = [a;b;c;d;e;f];
plot(Arr,'o'),ylim([-2 7]),xlim([-1 6]),grid on