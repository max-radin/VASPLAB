%% Test zero strain
F = strain_to_deformation(zeros(3));
expected_F = eye(3);
assert(all(F == expected_F))
