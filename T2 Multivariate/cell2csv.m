function cell2csv(filename, c)
    fid = fopen(filename, 'w');
    [row, col]=size(c);
    [row, x]=size(c{:,1});

    for i = 1:row
      for j = 1:col
        single_cell = c{1,j}(i);
        val = single_cell{1,1};
        if j == col #reached the end of a record
          fprintf(fid, '%s\n', num2str(val));
        else
          fprintf(fid, '%s,', num2str(val));
        endif
      endfor
    endfor

    fclose(fid);
end


