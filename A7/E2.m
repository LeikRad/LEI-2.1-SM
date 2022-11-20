clear all
[x,t] = GeraSinal(10000,0.001);


figure(1)
plot(t,x)
 
[X,f] = Espetro(x,0.001);

figure(2)
plot(f,abs(X))
xlim([-75 75])

 
newX = Filter(X,f,[0 5]);
[reconX, reconT] = Reconstroi(newX, f);
figure(3)
plot(t,x,'b',reconT,real(reconX),'r')
