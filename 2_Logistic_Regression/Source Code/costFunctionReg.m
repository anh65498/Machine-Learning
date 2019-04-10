function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
n = size(X, 2);                     % number of features after mapFeature()

% Initialization
J = 0;
grad = zeros(size(theta));

% hypothesis
h = sigmoid(X * theta);

%  We want the regularization to exclude the bias feature, so we can set theta(1) to zero.
%  Since we already calculated h, and theta is a local variable, we can modify theta(1)
%  without causing any problems.
theta(1,1) = 0;

% cost function
J = -(1/m) * (y' * log(h) + (1 .- y')* log(1 .- h)) .+ (lambda/(2*m)) * (sum(theta .^ 2));
% gradient, not gradient descent.
grad = (1/m) * (X' * (h - y)) + (lambda/m) * theta(1:n, :);



% =============================================================

end
