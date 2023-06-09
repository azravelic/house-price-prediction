function c = csv2cell(filename)
    pattern='%[^,],%[^,],%[^,\r\n]';
    c=textscan(fopen(filename), pattern);
end

