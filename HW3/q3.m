% Load the poisson_workaround script to define poissrnd2 function
poisson_workaround;

% Generate 1000 Poisson distributed random numbers with parameter 𝜆 = 5
lambda = 5;
num_samples = 1000;
poisson_samples = zeros(num_samples, 1);

% Use the workaround function poissrnd2 to generate Poisson samples
for ii = 1:num_samples
    poisson_samples(ii) = poissrnd2(lambda);
end

% Get the histogram of the data and normalize the counts
[N, X] = hist(poisson_samples, unique(poisson_samples));
probability_mass_function = N / sum(N);

% Plot the normalized histogram as a bar graph
bar(X, probability_mass_function);
hold on;

% Plot the actual Poisson probability mass function with 𝜆 = 5
x_values = 0:max(X);
poisson_pmf = poisspdf2(x_values, lambda);
plot(x_values, poisson_pmf, 'r-', 'LineWidth', 2);

% Add labels and title
xlabel('Number of Occurrences');
ylabel('Probability');
title('Poisson Probability Mass Function');

% Add legend
legend('Normalized Histogram', 'Poisson PMF (\lambda = 5)', 'Location', 'north east');

% Hold off to prevent further plotting on this figure
hold off;
