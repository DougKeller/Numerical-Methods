function [c, k] = newton(f, df, x0, tol, maxit)
    xk = x0;
    for k = 1:maxit
        xkp = xk - f(xk)/df(xk);
        abserr = abs(xkp - xk);
        relerr = abserr / (abs(xk) + eps);
        if(abserr < tol && relerr < tol)
            c = xkp;
            return;
        end
        xk = xkp;
    end
    c = xkp;
end

