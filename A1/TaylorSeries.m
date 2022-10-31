function Resultado = TaylorSeries(N,x)
    Resultado = zeros(1,length(x));
    for J = 1:N
        Value = ((x.^J)/factorial(J))*sin((J*pi)/2);
        Resultado = Resultado + Value;
    end
end

