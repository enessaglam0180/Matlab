% Number of coin flips
num_flips = 5000;

% Simulate coin flips (0 for tails, 1 for heads)
coin_flips = round(rand(1, num_flips));

% Calculate the running estimate of the probability of getting 'heads'
running_prob_heads = cumsum(coin_flips) ./ (1:num_flips);

% Plot the running estimate
plot(1:num_flips, running_prob_heads);
hold on;

% Plot a horizontal line at the expected value of 0.5
plot([1, num_flips], [0.5, 0.5], 'r');

% Add labels and title
xlabel('Number of Coin Flips');
ylabel('Probability of Heads');
title('Sample Probability of Heads in n flips of a simulated coin');

% Show legend
legend('Sample Probability', 'Fair Coin', 'Location', 'southeast');

% Hold off to prevent further plotting on this figure
hold off;
