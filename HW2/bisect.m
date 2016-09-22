function [c, k] = bisect(f, a, b, tolerance)
    ya = f(a);
    yb = f(b);
    
    if ya * yb > 0
        disp('Bad Interval!');
        c = NaN;
        k = 0;
        return;
    end
    
    fprintf('a: %f \nb: %f \ntolerance: %e\n', a, b, tolerance);
    
    maxIteration = 1 + floor(log((b - a) / tolerance)/log(2));
    fprintf('Maximum iterations: %d \n', maxIteration);
    
    for k = 1:maxIteration
        c = (a + b) / 2;
        yc = f(c);

        if (yc == 0)
            return;
        elseif(ya * yc < 0)
            b = c;
            yb = yc;
        else
            a = c;
            ya = yc;
        end
    end 
end


