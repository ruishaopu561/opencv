#!/bin/bash

make clean
make

rm -r result
mkdir result

./main -input ./scene/scene4_01_sphere_shadow.txt -size 200 200 -output ./result/output4_01.tga -shadows 

./main -input ./scene/scene4_02_colored_shadows.txt -size 200 200 -output ./result/output4_02.tga -shadows -tessellation 50 25 -gouraud
# ./main -input ./scene/scene4_02_colored_shadows.txt -size 200 200 -output ./result/output4_02.tga -shadows -gui -tessellation 50 25 -gouraud

./main -input ./scene/scene4_03_mirrored_floor.txt -size 200 200 -output ./result/output4_03.tga -shadows -bounces 1 -weight 0.01
# ./main -input ./scene/scene4_03_mirrored_floor.txt -size 200 200 -output ./result/output4_03.tga -shadows -bounces 1 -weight 0.01 -gui

./main -input ./scene/scene4_04_reflective_sphere.txt -size 200 200 -output ./result/output4_04a.tga -shadows -bounces 0 -weight 0.01
./main -input ./scene/scene4_04_reflective_sphere.txt -size 200 200 -output ./result/output4_04b.tga -shadows -bounces 1 -weight 0.01
./main -input ./scene/scene4_04_reflective_sphere.txt -size 200 200 -output ./result/output4_04c.tga -shadows -bounces 2 -weight 0.01
./main -input ./scene/scene4_04_reflective_sphere.txt -size 200 200 -output ./result/output4_04d.tga -shadows -bounces 3 -weight 0.01

./main -input ./scene/scene4_05_transparent_bar.txt -size 200 200 -output ./result/output4_05.tga -shadows -bounces 10 -weight 0.01 -shade_back
# ./main -input ./scene/scene4_05_transparent_bar.txt -size 200 200 -output ./result/output4_05.tga -shadows -bounces 10 -weight 0.01 -shade_back -gui

./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06a.tga -shadows -bounces 0 -weight 0.01 -shade_back
./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06b.tga -shadows -bounces 1 -weight 0.01 -shade_back
./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06c.tga -shadows -bounces 2 -weight 0.01 -shade_back
./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06d.tga -shadows -bounces 3 -weight 0.01 -shade_back
./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06e.tga -shadows -bounces 4 -weight 0.01 -shade_back
./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06f.tga -shadows -bounces 5 -weight 0.01 -shade_back
# ./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06a.tga -shadows -bounces 0 -weight 0.01 -shade_back -gui
# ./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06b.tga -shadows -bounces 1 -weight 0.01 -shade_back -gui
# ./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06c.tga -shadows -bounces 2 -weight 0.01 -shade_back -gui
# ./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06d.tga -shadows -bounces 3 -weight 0.01 -shade_back -gui
# ./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06e.tga -shadows -bounces 4 -weight 0.01 -shade_back -gui
# ./main -input ./scene/scene4_06_transparent_bars.txt -size 200 200 -output ./result/output4_06f.tga -shadows -bounces 5 -weight 0.01 -shade_back -gui

./main -input ./scene/scene4_07_transparent_sphere_1.0.txt -size 200 200 -output ./result/output4_07.tga -shadows -bounces 5 -weight 0.01 -shade_back -tessellation 30 15
./main -input ./scene/scene4_08_transparent_sphere_1.1.txt -size 200 200 -output ./result/output4_08.tga -shadows -bounces 5 -weight 0.01 -shade_back -tessellation 30 15
./main -input ./scene/scene4_09_transparent_sphere_2.0.txt -size 200 200 -output ./result/output4_09.tga -shadows -bounces 5 -weight 0.01 -shade_back -tessellation 30 15
# ./main -input ./scene/scene4_07_transparent_sphere_1.0.txt -size 200 200 -output ./result/output4_07.tga -shadows -bounces 5 -weight 0.01 -shade_back -gui -tessellation 30 15
# ./main -input ./scene/scene4_08_transparent_sphere_1.1.txt -size 200 200 -output ./result/output4_08.tga -shadows -bounces 5 -weight 0.01 -shade_back -gui -tessellation 30 15
# ./main -input ./scene/scene4_09_transparent_sphere_2.0.txt -size 200 200 -output ./result/output4_09.tga -shadows -bounces 5 -weight 0.01 -shade_back -gui -tessellation 30 15

./main -input ./scene/scene4_10_point_light_distance.txt -size 200 200 -output ./result/output4_10.tga -shadows
# ./main -input ./scene/scene4_10_point_light_distance.txt -size 200 200 -output ./result/output4_10.tga -shadows -gui

./main -input ./scene/scene4_11_point_light_circle.txt -size 200 200 -output ./result/output4_11.tga -shadows 
./main -input ./scene/scene4_12_point_light_circle_d_attenuation.txt -size 200 200 -output ./result/output4_12.tga -shadows 
./main -input ./scene/scene4_13_point_light_circle_d2_attenuation.txt -size 200 200 -output ./result/output4_13.tga -shadows 

./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -output ./result/output4_14a.tga -shadows -shade_back -bounces 0 -weight 0.01 
./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -output ./result/output4_14b.tga -shadows -shade_back -bounces 1 -weight 0.01 
./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -output ./result/output4_14c.tga -shadows -shade_back -bounces 2 -weight 0.01 
./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -output ./result/output4_14d.tga -shadows -shade_back -bounces 3 -weight 0.01 
./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -output ./result/output4_14e.tga -shadows -shade_back -bounces 4 -weight 0.01 
./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -output ./result/output4_14f.tga -shadows -shade_back -bounces 5 -weight 0.01 

# ./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -shadows -shade_back -bounces 1 -weight 0.01 -gui
# ./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -shadows -shade_back -bounces 2 -weight 0.01 -gui
# ./main -input ./scene/scene4_14_faceted_gem.txt -size 200 200 -shadows -shade_back -bounces 3 -weight 0.01 -gui

make clean