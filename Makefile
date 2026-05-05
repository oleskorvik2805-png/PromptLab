APP=app_rus_teacher_prompt_generator.html
DIST=dist
PORT?=8000

.PHONY: build run clean

build:
	mkdir -p $(DIST)
	cp $(APP) $(DIST)/index.html
	@echo "Built $(DIST)/index.html"

run: build
	python3 -m http.server $(PORT) --directory $(DIST) --bind 0.0.0.0

clean:
	rm -rf $(DIST)
