function output = eegSampen2(dim, r, s)
  rows = size(s,2); % get signal rows
  output = zeros(1,rows); %

  for i=1:rows
    output(1,i) = saenkd(dim,r, s(:,i));
  end
end
