slides:
	make index.html
	# make web
	# cp figs/* docs/figs/.
	# make clean

%.html: %.Rmd
	Rscript -e "rmarkdown::pandoc_available()"
	Rscript -e "rmarkdown::render('$^', output_format = 'xaringan::moon_reader')"

clean:
	rm *.html xaringan-themer.css
	rm -r *_files
