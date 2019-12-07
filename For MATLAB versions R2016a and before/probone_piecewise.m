function  [y] = probone_piecewise(n)
if (n<9)
        y = n^2-7;
elseif (n>=10)
        n = n-10;
        if n<9
                y = n^2-7;
        elseif n==9
                y = NaN;
        else
                while n>=10
                n = n-10;
                end
                if n<9
                                y = n^2-7;
                else
                                y = NaN;
                end
        end
else
        y = NaN;
end

end