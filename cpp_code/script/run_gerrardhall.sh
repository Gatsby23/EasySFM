#data path
image_folder=/media/edward/BackupPlus/Data/sfm_data/gerrard-hall/test_img;
image_list=/media/edward/BackupPlus/Data/sfm_data/gerrard-hall/sub_image_list.txt;
calib_k_file=/media/edward/BackupPlus/Data/sfm_data/gerrard-hall/Calibration/K.txt;
calib_distort_file=/media/edward/BackupPlus/Data/sfm_data/gerrard-hall/Calibration/distort.txt; # not neccessary, if not provided, just set it as none
output_file=../test_data/output/sfm_sparse_point_cloud_gerrardhall.ply;

#processing parameters
feature_type=S; # S for SURF an O for ORB
ba_frequency=5; # Do Bundle Adjustment each X frame

#display parameters
launch_viewer=1; # Open the real-time viewer
view_sphere=0; # render the point as sphere during visualization (sphere 1, point 0)

#gdb --args \ # Debug mode
./bin/sfm ${image_folder} ${image_list} ${calib_k_file} ${calib_distort_file} ${output_file} ${feature_type} ${ba_frequency} ${launch_viewer} ${view_sphere}  