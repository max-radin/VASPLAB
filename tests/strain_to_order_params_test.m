%% Test zero strain
order_params = strain_to_order_params(zeros(3));
expected_order_params = zeros(6,1);
assert(all(order_params == expected_order_params))
