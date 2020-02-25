% Calculate Power Percentage Spectur each band
function output = eegPP(bandSignal, allSignal)
  cols = size(bandSignal,1);
  output = zeros(1, cols);

  for i=1:cols
    output(:,i) = sum(bandSignal(i,:)) / sum(allSignal);
  end
end
