   

    # ===================================================================== #
    #                                                                       #  
    #  AUTHOR:       Jade Quinton Maggs                                     #
    #  EMAIL:        jademaggs@gmail.com                                    #
    #  UPDATED:      YYYY-mm-dd                                             #
    #  R VERSION:    vX.X.X                                                 #
    #                                                                       #
    # ===================================================================== #



# README ==================================================================

# OVERVIEW: ...


# FOLDER STRUCTURE: This script uses an R project-based working directory 
# structure consisting of four folders: 
#
#   - code:     all code files
#   - data:     data and any other inputs
#   - other:    summary spreadsheets, docs, etc
#   - output:   output figures, tables, etc 


# SETUP ===================================================================

# Erase all previous variables from memory
rm(list = ls())




# RUN EXTERNAL CODE



# IMPORT LIBRARIES
# library(readr) # to import csv
# library(lubridate) # format dates
# library(viridis) # colour blind friendly colour palette
# library(dplyr) # dataframe/tibble operations
# library(ggplot2) # plotting
# library(tidyr) # pivot_wider
# library(openxlsx) # to export data to a Excel spreadsheet




# IMPORT DATA
dat <- read_csv('...csv') 


# OUTPUT FILE FOR ANALYSES
if (file.exists(paste0('output/', sector, '/analysis_tables.xlsx'))) {
  analysis_tables <- loadWorkbook(paste0('output/', sector, '/analysis_tables.xlsx'))
} else {
  analysis_tables <- createWorkbook()
  saveWorkbook(analysis_tables, paste0('output/', sector, '/analysis_tables.xlsx'), 
               overwrite = TRUE)
}

# ANALYSIS ================================================================



# Write to output file
if('outings_all' %in% names(summary_tables)){removeWorksheet(summary_tables, 'outings_all')}
addWorksheet(summary_tables, "outings_all") 
writeData(summary_tables, sheet = "outings_all", length(unique(rm_data$outing_outing_id)))



# Save the output file
saveWorkbook(summary_tables, paste0('output/', sector, '/summary_tables.xlsx'), 
             overwrite = TRUE)

# REFERENCES ==============================================================

# END OF FILE =============================================================