function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  % More code here
end

% Example of calling the function and handling potential errors
try
  result = myFunction(-5);
catch e
  fprintf('An error occurred: %s\n', e.message);
end