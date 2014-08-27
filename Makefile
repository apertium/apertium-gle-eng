all:
	apertium-validate-dictionary apertium-eng-gle.gle.dix
	lt-comp lr apertium-eng-gle.gle.dix eng-gle.automorf.bin

	apertium-validate-dictionary apertium-eng-gle.eng.dix
	lt-comp lr apertium-eng-gle.en.dix eng-gle.automorf.bin

	apertium-validate-dictionary apertium-eng-gle.eng-gle.dix
	lt-comp rl apertium-eng-gle.eng-gle.dix eng-gle.autobil.bin

clean:
	rm eng-gle.automorf.bin
	rm eng-gle.automorf.bin
	rm eng-gle.autobil.bin

