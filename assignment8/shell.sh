make 

curve_editor -input spline8_01_bezier.txt -gui -curve_tessellation 30
curve_editor -input spline8_02_bspline.txt -gui -curve_tessellation 30

curve_editor -input spline8_01_bezier.txt -output_bezier output8_01_bezier.txt
curve_editor -input spline8_01_bezier.txt -output_bspline output8_01_bspline.txt
curve_editor -input spline8_02_bspline.txt -output_bezier output8_02_bezier.txt
curve_editor -input spline8_02_bspline.txt -output_bspline output8_02_bspline.txt
curve_editor -input output8_01_bezier.txt -gui -curve_tessellation 30
curve_editor -input output8_01_bspline.txt -gui -curve_tessellation 30
curve_editor -input output8_02_bezier.txt -gui -curve_tessellation 30
curve_editor -input output8_02_bspline.txt -gui -curve_tessellation 30

curve_editor -input spline8_03_bezier.txt -gui -curve_tessellation 30
curve_editor -input spline8_04_bspline.txt -gui -curve_tessellation 30
curve_editor -input spline8_05_bspline_dups.txt -gui -curve_tessellation 30

curve_editor -input spline8_06_torus.txt -curve_tessellation 4 -gui
curve_editor -input spline8_06_torus.txt -curve_tessellation 4 -revolution_tessellation 10 -output torus_low.obj
curve_editor -input spline8_06_torus.txt -curve_tessellation 30 -revolution_tessellation 60 -output torus_high.obj
raytracer -input scene8_06_torus_low.txt -gui -size 300 300
raytracer -input scene8_06_torus_high.txt -gui -size 300 300

curve_editor -input spline8_07_vase.txt -curve_tessellation 4 -output_bspline output8_07_edit.txt -gui
curve_editor -input output8_07_edit.txt -curve_tessellation 4 -revolution_tessellation 10 -output vase_low.obj
curve_editor -input output8_07_edit.txt -curve_tessellation 10 -revolution_tessellation 60 -output vase_high.obj
raytracer -input scene8_07_vase_low.txt -gui -size 300 300
raytracer -input scene8_07_vase_high.txt -gui -size 300 300

curve_editor -input spline8_08_bezier_patch.txt -gui
curve_editor -input spline8_08_bezier_patch.txt -patch_tessellation 4 -output patch_low.obj
curve_editor -input spline8_08_bezier_patch.txt -patch_tessellation 10 -output patch_med.obj
curve_editor -input spline8_08_bezier_patch.txt -patch_tessellation 40 -output patch_high.obj
raytracer -input scene8_08_bezier_patch_low.txt -gui -size 300 300
raytracer -input scene8_08_bezier_patch_med.txt -gui -size 300 300
raytracer -input scene8_08_bezier_patch_high.txt -gui -size 300 300

curve_editor -input spline8_09_teapot.txt -curve_tessellation 4 -gui
curve_editor -input spline8_09_teapot.txt -patch_tessellation 4 -curve_tessellation 4 -revolution_tessellation 10 -output teapot_low.obj
curve_editor -input spline8_09_teapot.txt -patch_tessellation 30 -curve_tessellation 30 -revolution_tessellation 100 -output teapot_high.obj
raytracer -input scene8_09_teapot_low.txt -gui -size 300 300
raytracer -input scene8_09_teapot_high.txt -gui -size 300 300

curve_editor -input output8_07_edit.txt -curve_tessellation 20 -revolution_tessellation 100 -output vase_very_high.obj
raytracer -input scene8_10_transparent_vase.txt -output output8_10.tga -grid 30 30 30 -size 300 300 -bounces 4 -shade_back -jittered_samples 9 -tent_filter 1.0 -shadows
raytracer -input scene8_11_reflective_teapot.txt -output output8_11.tga -grid 50 30 30 -size 300 300 -bounces 4 -shade_back -jittered_samples 9 -tent_filter 1.0 -shadows

make clean