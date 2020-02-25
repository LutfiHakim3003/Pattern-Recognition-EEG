function output = eegSegments(segment_lenght, sampling, data)
  dlenght = size(data,2);
  lseg = segment_lenght*sampling;
  segment = dlenght / lseg;
  output = zeros(segment, lseg);

  a = 1;
  for i=1:segment
    output(i,:) = data(:,a:(a+lseg)-1);
    a = a + lseg;
  end

end
