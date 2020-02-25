% do looping on eegDWTstat for multiple data
function output = eegDWTstatLoops(s)
  rows_size = size(s,1);
  output = zeros(rows_size, 3);

  for i=1:rows_size
    output(i,:) = eegDWTstat(s(i,:));
  end
end
