TIZEN_SDK := $(HOME)/apps/tizen-wearable-sdk
TOOLS := $(TIZEN_SDK)/tools/
all: compile install
	
clean:
		rm *.wgt

compile: clean
	$(TOOLS)/web-build .
	$(TOOLS)/web-packaging

install:
	$(TOOLS)/web-install -w *.wgt

restart-server:
	$(TOOLS)/sdb kill-server
	$(TOOLS)/sdb start-server
	$(TOOLS)/sdb devices

