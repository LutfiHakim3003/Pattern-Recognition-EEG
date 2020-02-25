function output = eegApEn(dim, r, s)
  rows = size(s,1);
  output = zeros(rows,1);

  for i=1:rows
    i
    output(i,1) = ApEn(dim,r,s(i,:));
  end
end
