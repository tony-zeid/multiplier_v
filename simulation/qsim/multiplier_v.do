onerror {quit -f}
vlib work
vlog -work work multiplier_v.vo
vlog -work work multiplier_v.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multiplier_v_vlg_vec_tst
vcd file -direction multiplier_v.msim.vcd
vcd add -internal multiplier_v_vlg_vec_tst/*
vcd add -internal multiplier_v_vlg_vec_tst/i1/*
add wave /*
run -all
