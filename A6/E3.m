%2.1
clear all

ta = 0.02;
t = 0:ta:5-ta;
y = sin(2*pi*t);
Amp = 1;
figure(1)
subplot(1,3,1)
plot(t,y)
subplot(1,3,2)
[X,f] = Espetro(y,ta);
plot(f,abs(X))
subplot(1,3,3)
[recont, reconx] = ReconstroiSinal(y,ta);
Vfs = 2*Amp;
plot(recont,reconx)
for n=2:4
figure(n)
    delta = Vfs/2^n;

    [indx, quantz] = quantiz(y,-Vfs+delta:delta:Vfs,-Vfs+delta/2:delta:Vfs+delta/2);
    
    subplot(1,3,1)
    plot(t,y, "g", t,quantz)
    subplot(1,3,2)
    [X,f] = Espetro(y,ta);
    plot(f,abs(X))
    [recont, reconx] = ReconstroiSinal(quantz,ta);
    subplot(1,3,3)
plot(recont,reconx)
end

