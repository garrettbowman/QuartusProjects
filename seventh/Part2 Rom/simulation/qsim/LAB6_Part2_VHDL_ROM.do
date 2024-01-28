onerror {exit -code 1}
vlib work
vcom -work work LAB6_Part2_VHDL_ROM.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.LAB6_Part2_VHDL_ROM_vhd_vec_tst
vcd file -direction LAB6_Part2_VHDL_ROM.msim.vcd
vcd add -internal LAB6_Part2_VHDL_ROM_vhd_vec_tst/*
vcd add -internal LAB6_Part2_VHDL_ROM_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f