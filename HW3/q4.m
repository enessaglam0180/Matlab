% a. Create a 3x3 cell array
employees = {'Joe', 'Sarah', 'Pat'; ...
             'Smith', 'Brown', 'Jackson'; ...
             30000, 150000, 120000};

% Display the cell array
employees_transposed = employees';

% Display the transposed cell array
disp(employees_transposed);

% b. Change Sarah's last name to 'Meyers'
employees{2, 2} = 'Meyers';

% Display the cell array after the change
employees_transposed = employees';

% Display the transposed cell array
disp(employees_transposed);

% c. Increase Pat's salary by $50,000
pat_index = strcmp(employees(1, :), 'Pat');
employees{3, pat_index} = employees{3, pat_index} + 50000;

% Display the cell array after the salary change
employees_transposed = employees';

% Display the transposed cell array
disp(employees_transposed);
