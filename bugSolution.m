function result = myFunction(input)
  % Improved error handling using try-catch block within nested functions
  try
    if input < 0
      error('Input must be non-negative');
    end
    % More code here
    result = input * 2; % Example calculation
  catch e
    % Rethrow the error from the nested function to the caller
    rethrow(e);
  end
end

% Example of calling the function and handling potential errors
try
  result = myFunction(-5);
catch e
  fprintf('An error occurred: %s\n', e.message);
end