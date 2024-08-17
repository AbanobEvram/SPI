vlib work

vlog Maindesign.v RAM.v SPI.v SPI_tb.v

vsim -voptargs=+acc work.SPI_tb

add wave -position insertpoint sim:/SPI_tb/DUT/*
add wave -position insertpoint sim:/SPI_tb/DUT/RAM/mem

run -all

#quit -sim