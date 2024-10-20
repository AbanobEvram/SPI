vlib work

vlog -f list.list

vsim -voptargs=+acc work.SPI_tb

add wave -position insertpoint sim:/SPI_tb/DUT/*
add wave -position insertpoint sim:/SPI_tb/DUT/RAM/mem

run -all