function [ F ] = strain_to_deformation( E )
%STRAIN_TO_DEFORMATION Construct a deformation tensor from a strain tensor.
%   F = strain_to_deformation( E ) computes the rotation-free deformation 
%   tensor F corresponding to the Green-Lagrange strain tensor E. 

    [Q, D] = eig(2*E+eye(size(E)));
    F = Q*D.^0.5*Q';
    
end