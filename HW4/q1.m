fid = fopen('weather_data.txt', 'r');
data = textscan(fid, '%s %f %f %s', 'Delimiter', ',');
fclose(fid);

dates = data{1};             
humidity = data{2};          
temperature = data{3};       
conditions = data{4};        

unique_conditions = unique(conditions);

avg_temp = zeros(size(unique_conditions));
data_counts = zeros(size(unique_conditions));

for i = 1:numel(unique_conditions)
    
    indices = strcmp(conditions, unique_conditions{i});
        
    avg_temp(i) = mean(temperature(indices));
   
    data_counts(i) = sum(indices);
end

for i = 1:numel(unique_conditions)
    fprintf('Average temperature for: %-18s %-20.2f, Number of Data Points: %d\n', unique_conditions{i}, avg_temp(i), data_counts(i));
end

figure;
bar(avg_temp);
xlabel('Weather Condition');
ylabel('Average Temperature (°C)');
title('Average Temperatures by Weather Condition ');
set(gca, 'XTickLabel', unique_conditions);


