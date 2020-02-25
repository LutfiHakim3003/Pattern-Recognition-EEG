function output = eegFFTbands(s)
  rows = size(s,1);
  output = zeros(rows, size(s,2));

  for i=1:rows
    output(i,:) = abs(fft(s(i,:)));
  end
end
