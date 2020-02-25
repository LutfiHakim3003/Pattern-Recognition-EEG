% Print to CSV with acuracy 30 decimal number
function eegPrint(input)
  fid = fopen('output.txt', 'wt');
  fprintf(fid, '%0.5f %0.5f %0.5f\n', input.');
  fclose(fid);
end
