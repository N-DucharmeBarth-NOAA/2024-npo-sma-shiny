

# ISC SHARKWG
# 2024/07/09
# script to launch shiny app

# Copyright (c) 2024 ISC SHARKWG
# You should have received a copy of the GNU General Public License along with this program.  If not, see <https://www.gnu.org/licenses/>.

#_____________________________________________________________________________________________________________________________
# load packages
library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(data.table)
library(markdown)
library(magrittr)
library(ggplot2)
library(viridis)
library(ggthemes)
library(GGally)
# library(DT)

#________________________________________________________________________________________________________________________________________________________________________________________________________
# load data 
    summary_dt = fread(file="./data/summary.csv")
    # format numbers
    summary_dt$max_rhat = round(summary_dt$max_rhat,digits=4)
    summary_dt$min_neff = round(summary_dt$min_neff)
    summary_dt$index_rmse = round(summary_dt$index_rmse,digits=4)
    summary_dt$index_loglik = round(summary_dt$index_loglik,digits=4)

#________________________________________________________________________________________________________________________________________________________________________________________________________
# set relative paths
    model_stem = "./data/model/"

#_____________________________________________________________________________________________________________________________
# get directories of available model runs
    all_dirs = list.files(model_stem,recursive = TRUE)
    all_dirs = all_dirs[grep("fit_summary.csv",all_dirs,fixed=TRUE)]
    all_dirs = gsub("fit_summary.csv","",all_dirs,fixed=TRUE)

    # get index names
    index_names = colnames(fread("./data/index_mat.csv"))
    year_one = 1994
#_____________________________________________________________________________________________________________________________
# app options
  start_collapsed = FALSE

#_____________________________________________________________________________________________________________________________
# source ui/server
  source("./r-code/css.r", local=TRUE)
  source("./r-code/ui.R", local=TRUE)
  source("./r-code/server.R", local=TRUE)

  source_dir_stem = "./r-code/helper_fns/"
  source(paste0(source_dir_stem),"ssp_calc_likelihood.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_calc_rmse.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_catch_reconstruction.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_derived_quants.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_derived_quants_init_recent.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_derived_quants_ts.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_extract_cpue_fit.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_forecast.R", local=TRUE)
  source(paste0(source_dir_stem),"ssp_prior_pushforward.R", local=TRUE)

#_____________________________________________________________________________________________________________________________
# Run the app
  app = shinyApp(ui=ui,server=server)
  runApp(app, port = 8888)
