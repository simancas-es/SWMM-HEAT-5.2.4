BUILD_DIR ?= build
CMAKE ?= cmake

.PHONY: debug release configure clean

debug: configure
	$(CMAKE) --build $(BUILD_DIR) --config Debug

release: configure
	$(CMAKE) --build $(BUILD_DIR) --config Release

configure:
	$(CMAKE) -S . -B $(BUILD_DIR)

clean:
	$(CMAKE) --build $(BUILD_DIR) --target clean
