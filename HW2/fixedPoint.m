function [c, k] = fixedPoint(g, x0, tol, maxit)
    ck = x0;
    for k = 1:maxit
        ckp = g(ck);
        abserr = abs(ckp - ck);
        relerr = abserr / (abs(ck) + eps);
        if(abserr < tol && relerr < tol)
            c = ckp;
            return;
        end
        ck = ckp;
    end
    c = ckp;
end

