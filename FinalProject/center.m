function c = center (x, y)
    distanceTo = @(c) sqrt( (x - c(1)).^2 + (y - c(2)).^2);
    S = @(R) sum( ( distanceTo(R) - R(3) ).^2 );

    initialGuess = [0, 0, 1]; % Guess c = [0, 0] with r = 1
    c = fminsearch(S, initialGuess);
end