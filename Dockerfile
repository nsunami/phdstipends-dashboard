FROM rocker/shiny-verse:4.1.1
RUN install2.r rsconnect here ggdist scales flexdashboard
WORKDIR /home/shinyusr
COPY ./ /home/shinyusr/app
COPY deploy.R deploy.R
CMD Rscript deploy.R
