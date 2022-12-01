report.html: Project.Rmd data/hrv_small.csv code/01_make_table.Rmd code/02_make_fig.Rmd
	Rscript render_report.R

.PHONY: install 
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean
clean:
	rm -f report.html
	
build:
	docker build -t gabyb1012/project_image .
	
pull:
	docker pull gabyb1012/project_image
	
project_mac:
	docker run -v "/$$(pwd)/report":/project/report gabyb1012/project_image

project_windows:
	docker run -v "/$$(pwd)/report":/project/report gabyb1012/project_image