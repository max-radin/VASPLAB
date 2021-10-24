function [ result ] = import_outcar( filename, param )
%IMPORT_OUTCAR Import data from a VASP OUTCAR file. 
%   result = import_outcar(filename,param) imports selected data from a
%   VASP OUTCAR file. param is string specifying which data should be
%   imported. Allowed values are:
%
%    'forces': import forces on ions in eV/Angstrom.
%    'tangent': import tangent direction from a NEB calculation.
%    'energy': total energy.
%    'elastic-moduli': elasticity tensor (i.e., "TOTAL ELASTIC MODULI").
%
%   n.b.: IMPORT_OUTCAR may run slowly if the OUTCAR file is large.
%
%   See also VASP_XML.

  if nargin == 0
      filename='OUTCAR';
  end

  fid = fopen(filename);
  if fid==-1
    error(['File ' filename ' not found']); 
  end
 
  switch param
      case 'forces'
        while ~feof(fid)
           line = fgetl(fid);
            if numel(regexp(line,'TOTAL-FORCE'))==1
               pos = ftell(fid);
            end
        end
        fseek(fid,pos,'bof');      
        fgetl(fid);        
        result = fscanf(fid,'%f',[6 inf])'; 
        result = result(:,4:6);       
      case 'tangent'
        while ~feof(fid)
           line = fgetl(fid);
            if numel(regexp(line,'TANGENT'))==1
               pos = ftell(fid);
            end
        end
        fseek(fid,pos,'bof');      
        fgetl(fid);        
        result = fscanf(fid,'%f',[6 inf])'; 
        result = result(:,1:3);
      case 'energy'
        while ~feof(fid)
           buffer = ftell(fid);
           line = fgetl(fid);
            if numel(regexp(line,'energy\(sigma->0\)'))==1
                pos = buffer;
            end
        end       
        fseek(fid,pos,'bof');
        line = fgetl(fid);
        result = sscanf(line,'  energy  without entropy= %*f energy(sigma->0) = %f');
      case 'elastic-moduli'
        while ~feof(fid)
           line = fgetl(fid);
            if numel(regexp(line,'TOTAL ELASTIC MODULI'))==1
               pos = ftell(fid);
            end
        end
        fseek(fid,pos,'bof');
        fgetl(fid);
        fgetl(fid);
        result = zeros(6,6);
        for i = 1:6
            line = fgetl(fid);
            line = regexprep(line,'[XYZ]*','');
            result(i,:) = sscanf(line,'%f')';
        end
  end
    fclose(fid);
end