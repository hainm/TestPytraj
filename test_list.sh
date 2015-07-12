python test_matrix_analysis.py || exit 1
python test_dihedral_analysis.py || exit 1
python test_Trajectory_constructor.py || exit 1

python test_autoimage.py || exit 1
python test_autoimage_with_rmsfit.py || exit 1
python test_chunk_iter_with_autoimage_rmsfit.py || exit 1
python test_frame_iter_with_autoimage.py || exit 1

python test_ActionList_distance.py || exit 1
python test_ActionList_angle.py || exit 1

python test_ActionList_dihedral.py  || exit 1

python test_memory_accumulation.py || exit 1