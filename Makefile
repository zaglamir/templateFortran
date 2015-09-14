ROOTCXXFLAGS := $(shell root-config --cflags)
LDFLAGS := $(shell root-config --ldflags --glibs) -lEGPythia6
CERNFLAGS := -L/data/yezhenyu/Tools/cern/pro/lib -lpacklib
.PHONY: clean

all: minbias0

clean:
	@rm -f minbias0 *.o  

minbias0: minbias0.f
	gfortran -o $@ $^ ${CERNFLAGS} -m64 -L${PYTHIA6}/lib -lPythia6
