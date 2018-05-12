vlog -work work D:/Programme/Altera_Quartus2_1301_WebEd/Projects/MDT90P01/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MDT90P01_vlg_vec_tst
onerror {resume}
add wave {MDT90P01_vlg_vec_tst/i1/c0}
run -all
