function [ output_args ] = logAppendValue( append_value, filename )
% v.0.1 - 14-Nov-2011 - Jens.Bandener@rub.de
%
%
%LOGAPPENDVALUE This function is for saving integer and double values (even
%a vector of one of this types) into a given file. If the filename given
%does not exist, the file is created. The data are appended to the end of
%the file.
%
%       content of the file: (sample)
%       14-Nov-2011 14:41:02 -> 45.56000e00
%
%Each line starts with a current timestamp
%



fid = fopen(filename, 'a+');
fprintf(fid, '%s -> ', datestr(now));

if(mod(append_value,1)==0)
    string_value = sprintf('%i  ',append_value);
    fprintf(fid, '%s \n', string_value);
else
    string_value = sprintf('%d  ',append_value);
    fprintf(fid, '%s \n', string_value);
end


fclose(fid);

output_args = [string_value filename];
end

