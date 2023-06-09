function c = csv2cell(filename)
    pattern='%[^,],%[^,\r\n]';
    c=textscan(fopen(filename), pattern);
    len = length(c);
    c{1,2}(len)= [ ];
end

