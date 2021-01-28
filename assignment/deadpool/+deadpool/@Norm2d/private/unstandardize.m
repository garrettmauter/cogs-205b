function x = unstandardize(obj,z)
    % Transformation of a 2-D Standard Normal Distribution to a Multivariate Normal Mu Covariace sigma
    if length(z) < 2
        error('z must be a 2D vector.')
    end
    A = chol(obj.CovM).'
    x = A * z + obj.Mean
end