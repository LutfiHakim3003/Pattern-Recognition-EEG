% function to calculate average power
% data should be on 1D matrix
function output = avp(s)
  data_size = size(s,2);
  abs_value = abs(s);
  square_value = abs_value .^ 2;
  output = sum(square_value) / data_size;
end
