%% question1
vector = 5 * randn(500, 1) + 2;

sample_mean = mean(vector);
sample_std = std(vector);

% Display the sample mean and standard deviation
disp(['Sample mean: ', num2str(sample_mean)]);
disp(['Sample standard deviation: ', num2str(sample_std)]);
