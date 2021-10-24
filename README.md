# VASPLAB
MATLAB functions for processing data from the [Vienna Ab initio Simulation Package (VASP)](https://www.vasp.at/) and performing other common tasks related to the atomistic modeling of solid-state systems.

If you found VASPLAB to be useful, please consider leaving a review on the [MathWorks File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/36836-vasplab).
Note that VASPLAB is not affiliated with VASP Software GmbH, the developers of VASP.

## Installation
To install VASPLAB, place the VASPLAB folder somewhere on your hard drive (such as in your MATLAB folder). Then, from MATLAB, open File->Set Path, and add the VASPLAB `src` folder to your path.

## Usage
Below is a summary of VASPLAB functions. For more details, see documentation in source code (or use the `help` command, e.g. `help import_poscar`).

**atomic_radius(Z)**

Get atomic radius of element.

**chemsym2number(symbol)**

Get the atomic number for a chemical symbol.

**export_df3(filename,chg)**

Export volumetric data as a DF3 file.

**export_poscar(filename,geometry)**

Export a geometry struct as a VASP POSCAR file.

**fit_murnaghan_eos(V,E)**

Fit to the Murnaghan equation of state.

**hyperdistance(geometry1,geometry2)**

Calculate hyperdistance between two geometry structures.

**import_chgcar(filename)**

Import a VASP CHGCAR file.

**import_doscar(filename)**

Import a VASP DOSCAR file.

**import_eigenval(filename)**

Import a VASP EIGENVAL file.

**import_locpot(filename)**

Import a VASP LOCPOT file.

**import_oszicar(filename)**

Import energies from a VASP OSZICAR file.

**import_outcar(filename,param)**

Import data from a VASP OUTCAR file.

**import_poscar(filename)**

Import a VASP POSCAR/CONTCAR file.

**interpolate_poscar(filename1,filename2,N)**

Interpolate a chain of images between two POSCAR files.

**jmol_color(Z)**

Get color assigned to an element.

**kpath_length(k,A,mode)**

Find the distance along a path in k-space.

**murnaghan_eos(V,x)**

Evaluate the Murnaghan equation of state.

**neb_energies(directory)**

Extract energies and hyperdistance from NEB calculation.

**neb_spline(directory,N)**

Fit energies and forces of a NEB calculation using a spline.

**num_images()**

Determine number of images used in a NEB calculation.

**number2chemsym(Z)**

Get the chemical symbol for an atomic number.

**permute_coords(geometry1,geometry2)**

Permute ions in a geometry to match another geometry.

**plot_neb_spline(directory)**

Plot the energy along a NEB path.

**reciprocal_lattice(A)**

Find the reciprocal lattice.

**strain_tensor_to_order_params(E)**

Convert a strain tensor to order parameters.

**strain2deformation(E)**

Construct a deformation tensor from a strain tensor.

**supercell(geometry1,array)**

Create a supercell by replicating a geometry.

**vasp_xml(filename,param)**

Import data from a vasprun.xml file.
