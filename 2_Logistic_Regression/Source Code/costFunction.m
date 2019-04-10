function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y);                      % number of training examples


% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

h = sigmoid(X * theta);                                 % hypothesis
J = -(1/m) * (y' * log(h) + (1 .- y')* log(1 .- h));    % cost function
grad = (1/m) * (X' * (h - y));                          % gradient, not gradient descent.

% We compute gradient, not gradient descent here because gradient is
% used for fminunc later

% =============================================================

end
