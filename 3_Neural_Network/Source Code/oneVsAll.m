function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains num_labels logistic regression classifiers and returns all
%the classifier parameters in a matrix all_theta, where the i-th row of all_theta
%corresponds to the learned logistic regression for label i

m = size(X, 1);             % number of examples
n = size(X, 2);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% Set Initial theta
initial_theta = zeros(n + 1, 1);

for c = 1:num_labels

  % Set options for fminunc
  options = optimset('GradObj', 'on', 'MaxIter', 50);

  % This function will return theta for each class and the cost
  [theta] = fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
            initial_theta, options);

  %  The "y == c" statement creates a vector of 0's and 1's for each value of 'c' as you iterate from 1 to num_labels.
  % Those are the effective 'y' values that are used for training to detect each label.
  %  fmincg works similarly to fminunc, but is more efficient when we
  %  are dealing with large number of parameters.

  all_theta( c , :) = theta;

endfor

% =========================================================================

end
