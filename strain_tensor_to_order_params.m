function [ strain_order_parameters ] = strain_tensor_to_order_params( E )
%STRAIN_TENSOR_TO_ORDER_PARAMS Convert a strain tensor to order parameters.
%   e = strain_tensor_to_order_params( E ) converts a strain tensor E,
%   represented by a 3x3 matrix, to a 6x1 matrix e representing the strain
%   order parameters. See Phys. Rev. B 90, 224105 (2014) for details.

    assert(size(E,1) == 3, 'Strain tensor is not 3x3')
    assert(size(E,2) == 3, 'Strain tensor is not 3x3')
    assert(issymmetric(E), 'Strain tensor is not symmetric')
    
    E_vec = [E(1,1) E(2,2)  E(3,3)...
             sqrt(2)*E(2,3) sqrt(2)*E(1,3) sqrt(2)*E(1,2)]';
         
    T = [1/sqrt(3) 1/sqrt(3) 1/sqrt(3) 0 0 0
         1/sqrt(2) -1/sqrt(2) 0 0 0 0
         -1/sqrt(6) -1/sqrt(6) 2/sqrt(6) 0 0 0
         0 0 0 1 0 0
         0 0 0 0 1 0
         0 0 0 0 0 1];
     
    strain_order_parameters = T*E_vec;
end

