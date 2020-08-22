function q = QFT(s) 
    b0=ket([1 0]); 
    b1=ket([0 1]); 
    n = length(s)
    prodCoeff = 1/sqrt(2^n)
    e = exp(1)
    q = 
       prodCoeff*
          (b0+e^(2*pi*i*FBN(s(N)))*b1) 
    for j = 1:(n-1)
        tpn = 
           prodCoeff*
              (b0+e^(2*pi*i*FBN(s(n-j:n)))*b1) 
        q=kron(q,tpn) 
    end
end
function b = FBN(s) 
    b=0;
    for n=1:length(s)
         b=b+(s(n)/2^n)
    end
end 
