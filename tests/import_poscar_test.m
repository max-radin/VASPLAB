%% Test comment
geometry = import_poscar("POSCAR_BN_direct");
assert(geometry.comment == "Cubic BN")


%% Test lattice
geometry = import_poscar("POSCAR_BN_direct");
expected_lattice = [[0.0 0.5 0.5];[0.5 0.0 0.5];[0.5 0.5 0.0]]*3.57;
assert(all(geometry.lattice == expected_lattice))


%% Test direct coordinates
geometry = import_poscar("POSCAR_BN_direct");
expected_coords = [[0 0 0];[0.25 0.25 0.25]];
assert(all(geometry.coords == expected_coords))


%% Test symbols
geometry = import_poscar("POSCAR_BN_direct");
expected_coords = [[0 0 0];[0.25 0.25 0.25]];
assert(numel(geometry.symbols) == 2)
assert(geometry.symbols{1} == "B")
assert(geometry.symbols{2} == "N")


%% Test atom count
geometry = import_poscar("POSCAR_BN_direct");
expected_atomcount = [1 1];
assert(all(geometry.atomcount == expected_atomcount))
