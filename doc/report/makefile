PAPER=main

all:
	pdflatex -output-directory build $(PAPER)
	biber -output-directory=build -input-directory=build $(PAPER)
	pdflatex -output-directory build $(PAPER)

fast:
	pdflatex -output-directory build $(PAPER)

clean:
ifdef OS
	@echo "Windows"
	del build\*
else
	@echo "Linux"
	rm build/*
endif
