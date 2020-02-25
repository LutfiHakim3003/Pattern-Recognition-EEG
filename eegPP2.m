function output = eegPP2(bands, raw)
  rows_bands = size(bands,1);
  rows_raw = size(raw,1);
  output = zeros(rows_bands, 1);

  for i=1:rows_raw
    for j=1:rows_bands
      output(j,:) = sum(bands(j,:)) / sum(raw(i,:));
    end
  end

end
