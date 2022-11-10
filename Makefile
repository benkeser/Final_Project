report.html: Project.Rmd render_report.R data/hrv_small.csv code/01_make_table.Rmd code/02_make_fig.Rmd
	Rscript render_report.R

.PHONY: install 
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean
clean:
	rm -f report.html