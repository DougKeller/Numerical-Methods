function [c, k] = secant(f, x0, x1, tol, maxit)
    xn = x1;
    xnm = x0;
    
    for k=1:maxit
       xnp = xn - f(xn) * (xn - xnm) / (f(xn) - f(xnm));
        abserr = abs(xnp - xn);
        relerr = abserr / (abs(xn) + eps);
        if(abserr < tol && relerr < tol)
            c = xnp;
            return;
        end
        xnm = xn;
        xn = xnp;
    end
    c = xnp;
end

