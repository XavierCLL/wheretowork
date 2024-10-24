# main commands
## command to open R in interactive session
R:
	R --quiet --no-save

## command to remove automatically generated files
clean:
	rm -rf man/*.rd
	rm -rf docs/*
	rm -rf inst/doc/*

# R package development commands
## build docs and run tests
all: man readme test check spellcheck

## build docs
man:
	R --slave -e "devtools::document()"

vigns:
	R --slave -e "devtools::build_vignettes()"

## simulate data
data:
	R --slave -e "source('inst/scripts/format-ontario-pilot-data.R')"
	R --slave -e "source('inst/scripts/simulate-data.R')"

## copy data to production directory
prod-data:
	cd /opt/wheretowork/projects & rm -rf ontario_pilot
	cd /opt/wheretowork/projects & rm -rf sim_raster
	cd /opt/wheretowork/projects & rm -rf sim_raster2
	cd /opt/wheretowork/projects & rm -rf sim_raster3
	cd /opt/wheretowork/projects & rm -rf sim_vector
	cd /opt/wheretowork/projects & rm -rf sim_vector2
	cp -R inst/extdata/projects/ontario_pilot /opt/wheretowork/projects
	cp -R inst/extdata/projects/sim_raster /opt/wheretowork/projects
	cp -R inst/extdata/projects/sim_raster2 /opt/wheretowork/projects
	cp -R inst/extdata/projects/sim_raster3 /opt/wheretowork/projects
	cp -R inst/extdata/projects/sim_vector /opt/wheretowork/projects
	cp -R inst/extdata/projects/sim_vector2 /opt/wheretowork/projects

## reubild readme
readme:
	R --slave -e "rmarkdown::render('README.Rmd')"

## run tests
test:
	R --slave -e "devtools::test()" > test.log 2>&1
	rm -f tests/testthat/Rplots.pdf

## test examples
examples:
	R --slave -e "devtools::run_examples(test = TRUE, run = TRUE);warnings()"  >> examples.log
	rm -f Rplots.pdf

## run checks
check:
	echo "\n===== R CMD CHECK =====\n" > check.log 2>&1
	R --slave -e "devtools::check(build_args = '--no-build-vignettes', args = '--no-build-vignettes', run_dont_test = TRUE, vignettes = FALSE)" >> check.log 2>&1

check-no-multiarch:
	R --slave -e "devtools::check(args = '--no-multiarch', build_args='--no-multiarch')"

## check docs for spelling mistakes
spellcheck:
	echo "\n===== SPELL CHECK =====\n" > spell.log 2>&1
	R --slave -e "devtools::spell_check()" >> spell.log 2>&1

## install package
install:
	R --slave -e "devtools::install_local(getwd(), force = TRUE, upgrade = 'never')"

## build entire site
site:
	R --slave -e "pkgdown::clean_site()"
	R --slave -e "pkgdown::build_site(run_dont_run = TRUE, lazy = FALSE)"

## rebuild update files for site
quicksite:
	R --slave -e "pkgdown::build_site(run_dont_run = TRUE, lazy = TRUE)"

# commands to launch app
## launch local version using system libraries
debug:
	R -e "options(golem.app.prod = FALSE); golem::run_dev()"

quick-debug:
	R -e "options(golem.app.prod = FALSE, quick = TRUE); golem::run_dev()"

## launch local version inside Docker container
demo:
	docker-compose up --build -d

demo-kill:
	docker-compose down

## launch released version inside Docker container
launch:
	docker run -dp 3838:3838 --name wheretowork -it naturecons/wheretowork

launch-kill:
	docker rm --force wheretowork

# Docker commands
## create local image and push to docker
image:
	docker build -t naturecons/wheretowork:latest .
	docker push naturecons/wheretowork:latest

## delete all local containers and images
reset:
	docker rm $(docker ps -aq) || \
	docker rmi -f $(docker images -aq)

# renv commands
## snapshot R package dependencies
snapshot:
	R -e "renv::snapshot()"

.PHONY: clean data readme test check install man spellcheck examples site quicksite snapshot deploy demo demo-kill image debug snapshot vigns
