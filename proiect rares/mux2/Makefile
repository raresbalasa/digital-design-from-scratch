IP ?= mux2

work:
	vlib work

compile: work
	vlog -sv $(IP).sv tb_$(IP).sv


test: compile
	vsim -c tb_$(IP) -do "run -all; exit"

gui: compile
	vsim tb_$(IP) &

clean:
	rm -rf work transcript *.log *.wlf

.PHONY: work compile test gui clean