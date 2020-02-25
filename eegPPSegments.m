function output = eegPPSegments(data, seg)
  rows = size(data,1);
  output = zeros(seg, (rows/seg));

  a = 1;
  for i=1:seg
    output(i,:) = data(a:a+6,:);
    a = a + 7;
  end
end
