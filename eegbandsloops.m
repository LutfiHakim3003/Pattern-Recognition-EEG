function output = eegbandsloops(x, fs)
  rows = size(x,1);
  orows = rows * 3;
  output = zeros(orows,size(x,2));

  a = 1;
  for i=1:3:orows
    output(i:(i+2),:) = eegbands(x(a,:), fs);
    a = a + 1;
  end

end
