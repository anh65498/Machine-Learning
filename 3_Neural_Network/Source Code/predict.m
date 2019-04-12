function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

a_2 = sigmoid(X * Theta1(: , 2:end )');        % theta_1 is all the thetas for first hidden layer, a_2 is 5000x25 matrix
a_2 = [ones(m, 1) a_2];
h = sigmoid(a_2 * Theta2');                    % h is 5000 x 10

[v p] = max(h, [], 2);                         % v is value, p is index of max value of cost functione/class


% =========================================================================


end
