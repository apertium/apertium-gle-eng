all:
	apertium-validate-dictionary apertium-gle-eng.gle.dix
	lt-comp lr apertium-gle-eng.gle.dix eng-gle.automorf.bin

	apertium-validate-dictionary apertium-gle-eng.eng.dix
	lt-comp lr apertium-gle-eng.eng.dix eng-gle.automorf.bin

	apertium-validate-dictionary apertium-gle-eng.gle-eng.dix
	lt-comp lr apertium-gle-eng.gle-eng.dix gle-eng.autobil.bin

clean:
	rm eng-gle.automorf.bin
	rm eng-gle.automorf.bin
	rm eng-gle.autobil.bin

