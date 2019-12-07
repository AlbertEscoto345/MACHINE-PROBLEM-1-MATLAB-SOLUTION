%Let f(n) = y

result_array = zeros(1,100);
for n=0:99
    y=probone_piecewise(n);
    result_array(1, n+1) = y;
end
n = 0:99
y = result_array
stem(n,y,'rd','linewidth',1.5,'markerfacecolor','r')
xlabel 'n'
ylabel 'f(n)'
title 'Discrete Sequence Data Plot from n = 0 to n = 99  of the Given Piecewise Function'
  
function  [y] = probone_piecewise(n)
if (n<=9)
        y = n^2-7;
elseif (n>=10)
        n = n-10;
        if n<=9
                y = n^2-7;
        else
                while n>=10
                n = n-10;
                end
                if n<=9
                                y = n^2-7;
                else
                                y = NaN;
                end
        end
end

end