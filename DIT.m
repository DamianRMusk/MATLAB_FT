function d = DIT(x, N, z)
    if N == 1 
        d(1) = x(1)
    else
        d(1:N/2) = DIT(x, N/2, 2*z)
        d(N/2+1:N) = DIT(x+z, N/2, 2*z)
        for k = 1:N/2
            t = d(k)
            d(k) = 
              t + exp(-2*pi*i*(k-1)/N)*d(k+N/2)
            d(k+N/2) = 
              t - exp(-2*pi*i*(k-1)/N)*d(k+N/2)
        end
    end
end
