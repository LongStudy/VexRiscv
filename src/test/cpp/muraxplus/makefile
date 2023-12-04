DEBUG?=no
TRACE?=no
PRINT_PERF?=no
TRACE_START=0
ADDCFLAGS += -CFLAGS -pthread -LDFLAGS -pthread


ifeq ($(TRACE),yes)
	VERILATOR_ARGS += --trace
	ADDCFLAGS += -CFLAGS -DTRACE --trace-fst
endif
ifeq ($(DEBUG),yes)
	ADDCFLAGS += -CFLAGS "-g3 -O0"
endif
ifneq ($(DEBUG),yes)
	ADDCFLAGS += -CFLAGS "-O3"
endif
ifeq ($(PRINT_PERF),yes)
	ADDCFLAGS += -CFLAGS -DPRINT_PERF
endif

ADDCFLAGS += -CFLAGS -DTRACE_START=${TRACE_START}



all: clean compile

run: compile
	./obj_dir/VMuraxPlus

verilate: ../../../../MuraxPlus.v
	rm -f MuraxPlus.v*.bin
	cp ../../../../MuraxPlus.v*.bin . | true
	verilator -I../../../.. -cc  ../../../../MuraxPlus.v -CFLAGS -std=c++11  ${ADDCFLAGS} --gdbbt ${VERILATOR_ARGS} -Wno-WIDTH -Wno-UNOPTFLAT --x-assign unique --exe main.cpp
 	
compile: verilate
	make  -j  -C obj_dir/ -f VMuraxPlus.mk VMuraxPlus
 	
clean:
	rm -rf obj_dir
	rm -f MuraxPlus.v*.bin
 	
