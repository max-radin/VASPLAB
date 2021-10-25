Examples
========

Geometries
----------
Consider a `POSCAR`_ file such as the one shown below.
::

    Cubic BN
    3.57
    0.0 0.5 0.5
    0.5 0.0 0.5
    0.5 0.5 0.0
    B N
    1 1
    Direct
    0.00 0.00 0.00 
    0.25 0.25 0.25

This can be imported using ``import_poscar`` function:

.. code-block:: matlab

    geometry = import_poscar('POSCAR')


The returned geometry struct contains the information from the POSCAR file:
::

  geometry =

  scalar structure containing the fields:

    filename = POSCAR_BN_direct
    comment = Cubic BN
    lattice =

            0   1.7850   1.7850
       1.7850        0   1.7850
       1.7850   1.7850        0

    symbols =
    {
      [1,1] = B
      [1,2] = N
    }

    atomcount =

       1
       1

    selective = 0
    coords =

            0        0        0
       0.2500   0.2500   0.2500

The rows of ``coords`` attribute contain the fractional coordinates of the atoms. The Cartesian coordinates can be obtained by multiplying on the right by the lattice vectors:

.. code-block:: matlab

    geometry.coords*geometry.lattice

::

    ans =

        0        0        0
        0.8925   0.8925   0.8925


.. _POSCAR: https://www.vasp.at/wiki/index.php/POSCAR
