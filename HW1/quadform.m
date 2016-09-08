function [xp, xm] = quadform(a, b, c)
    discriminant = b * b - 4 * a * c;
    
    if (b < 0)
        xp = b * -1 + sqrt(discriminant);
        xm = c / (2 * xp);
    else
        xm = b * -1 - sqrt(discriminant);
        xp = c / (2 * xm);
    end
end