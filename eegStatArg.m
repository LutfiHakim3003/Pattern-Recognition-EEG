function output = eegStatArg(x)
  rows = size(x,1);
  columns = 12 * rows;
  output = zeros(1,columns);

  for i=1:12:columns
    for j=1:rows
      output(1,i:i+11) = x(j,:);
    end
  end
end
