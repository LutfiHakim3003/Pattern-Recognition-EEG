function output = eegPower(x)
  rows = size(x,1);
  output = zeros(rows, 1);

  for i=1:rows
    output(i,:) = bandpower(x(i,:));
  end
end
