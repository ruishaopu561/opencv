#!/bin/bash

make clean
make

rm -r result
mkdir result

./main -input ./scene/scene5_01_sphere.txt -size 200 200 -output ./result/output5_01a.tga -grid 1 1 1 -visualize_grid
./main -input ./scene/scene5_01_sphere.txt -size 200 200 -output ./result/output5_01b.tga -grid 5 5 5 -visualize_grid
./main -input ./scene/scene5_01_sphere.txt -size 200 200 -output ./result/output5_01c.tga -grid 15 15 15 -visualize_grid

./main -input ./scene/scene5_02_spheres.txt -size 200 200 -output ./result/output5_02a.tga -grid 15 15 15 -visualize_grid
./main -input ./scene/scene5_02_spheres.txt -size 200 200 -output ./result/output5_02b.tga -grid 15 15 3 -visualize_grid

./main -input ./scene/scene5_02_spheres.txt -size 200 200 -grid 8 8 8 -visualize_grid

./main -input ./scene/scene5_03_offcenter_spheres.txt -size 200 200 -output ./result/output5_03.tga -grid 20 20 20 -visualize_grid

./main -input ./scene/scene5_04_plane_test.txt -size 200 200 -tessellation 30 15 -gouraud
./main -input ./scene/scene5_04_plane_test.txt -size 200 200 -output ./result/output5_04.tga -grid 15 15 15 -visualize_grid

./main -input ./scene/scene5_05_sphere_triangles.txt -size 200 200 -tessellation 30 15 -gouraud
./main -input ./scene/scene5_05_sphere_triangles.txt -size 200 200 -output ./result/output5_05.tga -grid 20 20 10 -visualize_grid

./main -input ./scene/scene5_06_bunny_mesh_200.txt -size 200 200 -output ./result/output5_06.tga -grid 10 10 7 -visualize_grid
./main -input ./scene/scene5_07_bunny_mesh_1k.txt -size 200 200 -output ./result/output5_07.tga -grid 15 15 12 -visualize_grid
./main -input ./scene/scene5_08_bunny_mesh_5k.txt -size 200 200 -output ./result/output5_08.tga -grid 20 20 15 -visualize_grid
./main -input ./scene/scene5_09_bunny_mesh_40k.txt -size 200 200 -output ./result/output5_09.tga -grid 40 40 33 -visualize_grid

./main -input ./scene/scene5_10_scale_translate.txt -size 200 200 -tessellation 30 15 -gouraud
./main -input ./scene/scene5_10_scale_translate.txt -size 200 200 -output ./result/output5_10.tga -grid 15 15 15 -visualize_grid

./main -input ./scene/scene5_11_rotated_triangles.txt -size 200 200
./main -input ./scene/scene5_11_rotated_triangles.txt -size 200 200 -output ./result/output5_11.tga -grid 15 15 9 -visualize_grid

./main -input ./scene/scene5_12_nested_transformations.txt -size 200 200
./main -input ./scene/scene5_12_nested_transformations.txt -size 200 200 -output ./result/output5_12.tga -grid 30 30 30 -visualize_grid

# ./main -input ./scene/scene5_01_sphere.txt -size 200 200 -output ./result/output5_01a.tga -gui -grid 1 1 1 -visualize_grid
# ./main -input ./scene/scene5_01_sphere.txt -size 200 200 -output ./result/output5_01b.tga -gui -grid 5 5 5 -visualize_grid
# ./main -input ./scene/scene5_01_sphere.txt -size 200 200 -output ./result/output5_01c.tga -gui -grid 15 15 15 -visualize_grid

# ./main -input ./scene/scene5_02_spheres.txt -size 200 200 -output ./result/output5_02a.tga -gui -grid 15 15 15 -visualize_grid
# ./main -input ./scene/scene5_02_spheres.txt -size 200 200 -output ./result/output5_02b.tga -gui -grid 15 15 3 -visualize_grid

# ./main -input ./scene/scene5_02_spheres.txt -size 200 200 -gui -grid 8 8 8 -visualize_grid

# ./main -input ./scene/scene5_03_offcenter_spheres.txt -size 200 200 -output ./result/output5_03.tga -gui -grid 20 20 20 -visualize_grid

# ./main -input ./scene/scene5_04_plane_test.txt -size 200 200 -gui -tessellation 30 15 -gouraud
# ./main -input ./scene/scene5_04_plane_test.txt -size 200 200 -output ./result/output5_04.tga -gui -grid 15 15 15 -visualize_grid

# ./main -input ./scene/scene5_05_sphere_triangles.txt -size 200 200 -gui -tessellation 30 15 -gouraud
# ./main -input ./scene/scene5_05_sphere_triangles.txt -size 200 200 -output ./result/output5_05.tga -gui -grid 20 20 10 -visualize_grid

# ./main -input ./scene/scene5_06_bunny_mesh_200.txt -size 200 200 -output ./result/output5_06.tga -gui -grid 10 10 7 -visualize_grid
# ./main -input ./scene/scene5_07_bunny_mesh_1k.txt -size 200 200 -output ./result/output5_07.tga -gui -grid 15 15 12 -visualize_grid
# ./main -input ./scene/scene5_08_bunny_mesh_5k.txt -size 200 200 -output ./result/output5_08.tga -gui -grid 20 20 15 -visualize_grid
# ./main -input ./scene/scene5_09_bunny_mesh_40k.txt -size 200 200 -output ./result/output5_09.tga -gui -grid 40 40 33 -visualize_grid

# ./main -input ./scene/scene5_10_scale_translate.txt -size 200 200 -gui -tessellation 30 15 -gouraud
# ./main -input ./scene/scene5_10_scale_translate.txt -size 200 200 -output ./result/output5_10.tga -gui -grid 15 15 15 -visualize_grid

# ./main -input ./scene/scene5_11_rotated_triangles.txt -size 200 200 -gui
# ./main -input ./scene/scene5_11_rotated_triangles.txt -size 200 200 -output ./result/output5_11.tga -gui -grid 15 15 9 -visualize_grid

# ./main -input ./scene/scene5_12_nested_transformations.txt -size 200 200 -gui
# ./main -input ./scene/scene5_12_nested_transformations.txt -size 200 200 -output ./result/output5_12.tga -gui -grid 30 30 30 -visualize_grid

make clean