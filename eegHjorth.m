function hjorthBands = eegHjorth(input)
  rows = size(input,1);
  hjorthBands = zeros(rows,3); % columns : activity, mobility, complexity
  for i=1:rows
    [hjorthBands(i,1), hjorthBands(i,2), hjorthBands(i,3)] = hjorth(input(i,:)',0);
  end
end
