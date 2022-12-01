FROM rocker/r-ubuntu

RUN apt-get update && apt-get install -y pandoc

RUN mkdir /project
WORKDIR /project

COPY Makefile .
COPY Project.Rmd .
COPY render_report.R .

COPY .Rprofile . 
COPY renv.lock .

RUN mkdir renv 

COPY renv/settings.dcf renv
COPY renv/activate.R renv

RUN mkdir code
RUN mkdir data
RUN mkdir report

RUN Rscript -e "renv::restore(prompt = FALSE, exclude = c('nloptr'))"
RUN apt install -y libcurl4-openssl-dev
RUN Rscript -e "renv::install('gtsummary')"

COPY code/* code

COPY data/* data

CMD make && mv Project.html report

