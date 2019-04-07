function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% Initialize
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


mu = mean(X);
sigma = std(X);

% duplicate mu and sigma for each row in X, so they're the same size.
m = size(X, 1);
mu_matrix = ones(m, 1) * mu;
sigma_matrix = ones(m, 1) * sigma;
	
X_norm = (X - mu_matrix) ./ sigma_matrix; 		% / must be element-wise

% ============================================================

end
