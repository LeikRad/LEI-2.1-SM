function [] = temp_frequencia(T_F,Ta,To,Np,y)
%TEMP_FREQUENCIA Summary of this function goes here
%   Detailed explanation goes here 
    Fo = 1/To;
    N= round(Np*To/Ta);
    t = (0:N-1)*Ta;
    Fa = 1/Ta;
    X = fftshift(fft(y))/N;
    f = (0:N-1)*(Fa/N)-(Fa/2);
    switch(T_F)
        case {1}
            plot(t,y),xlabel("Tempos (S)"),ylabel("Y")
            grid("on")
        case {2}
            plot(f,abs(X)),xlabel("Frequencia (Hertz)"),ylabel("Magnitude")
            grid("on")
        case {3}
            figure("Name","Sinal no Tempo")
            plot(t,y),xlabel("Tempos (S)"),ylabel("Y")
            grid("on")
            figure("Name","Sinal na Frequência")
            plot(f,abs(X)),xlabel("Frequencia (Hertz)"),ylabel("Magnitude")
            grid("on")
        otherwise
            disp("T_F deverá ter valores de 1,2 e 3.")
    end
end

