clear all

T = 1;
f = 1;
Ta = 0.001;
Np = 7;
k = 100;
ak=zeros(1,k);
bk=zeros(1,k-1);
ind = 1:2:k-1;

bk(ind) = 4./(pi*ind);

bk = [0 bk];
[x, y] = ExecFourier(Ta,f,Np,ak,bk);


[aktest, bktest] = FourierCoeffs(Ta,T,x,k)