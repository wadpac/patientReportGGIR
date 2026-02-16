rm(list = ls())
graphics.off()
# Install: https://miktex.org/download
# On Windows: install tabu package: https://stackoverflow.com/questions/47613096/tabu-sty-not-found
library(patientReportGGIR)
library(kableExtra)
Rfiles = dir("R", full.names = TRUE)
for (i in Rfiles) source(i)
# source("R/createReport.R")
# source("R/plot_lux_sleep_act_cr.R")
# source("R/prepareTable.R")
# source("R/introText.R")
# source("R/writeReportTable.R")
# GGIRoutputdir = "D:/Dropbox/Work/sharedfolder/projects/ERC_Paris/Clinic/output_pilot2022"
# idsep = "_"
# GGIRoutputdir = "D:/Dropbox/Work/sharedfolder/projects/ERC_Paris/Clinic/Circame_2024_bin/output_S20_2024_copie"
# GGIRoutputdir = "~/Dropbox/Work/sharedfolder/projects/ERC_Paris/Clinic/Circame_2024_bin/output_S20_2024_copie"
# GGIRoutputdir = "~/data/ERC_Circame/output_bins"
# idsep = "[.]"


# GGIRoutputdir = "D:/Dropbox/Work/sharedfolder/projects/ERC_Paris/Clinic/Circame_2024_bin/output_S20_2024_copie"
# idsep = "[.]"


# GGIRoutputdir = "D:/Projects/ERC_Paris/Clinic/output_realCircameData"
# maskingFile = "D:/Projects/ERC_Paris/Clinic/output_realCircameData/maskingFile.csv"
# idsep = "_"
# # lang = "fr"
# lang = "en"
# desiredtz = "Europe/Paris"
# quartile_thresholds = data.frame(MVPA = c("0:15", "0:25", "0:30"),
#                                  LIPA = c("3:30", "4:30", "5:40"),
#                                  SB = c("10:00", "10:30", "11:30"),
#                                  Sleeptime = c("8:00", "8:30", "9:15"),
#                                  SleepPercentage = c(90, 92,  95))


desiredtz = "Asia/Taipei"
idsep = "-"
# lang = "fr"
lang = "en"
quartile_thresholds = data.frame(MVPA = c("0:15", "0:25", "0:30"),
                                 LIPA = c("3:30", "4:30", "5:40"),
                                 SB = c("10:00", "10:30", "11:30"),
                                 Sleeptime = c("8:00", "8:30", "9:15"),
                                 SleepPercentage = c(90, 92,  95))
table_format = "long"
GGIRoutputdir = "D:/Projects/David/output_testbins"
# quartile_thresholds = NULL


# # # # ================================================
# source("R/plot_lux_sleep_act_cr.R")
# getID = function(x) {
#   x = gsub(pattern = "meta_", replacement = "", x = x)
#   return(unlist(strsplit(x, idsep))[1])
# }
# ids = unlist(lapply(dir(paste0(GGIRoutputdir, "/meta/basic"), full.names = FALSE), FUN = getID))
# 
# # plotfile = paste0(GGIRoutputdir, "/test.png")
# # png(filename = plotfile,
# #     width = 12, height = 6, res = 900, units = "in")
# 
# # id_needed =  grep("C010142AP" ,ids, value = TRUE)
# id_needed = "RTM15"
# x11()
# plot_lux_sleep_act_cr(GGIRoutputdir = GGIRoutputdir, id = id_needed,
#                       lang = lang, desiredtz = desiredtz) #, maskingFile = maskingFile
# # dev.off()
# kkkk
# # ================================================
# # Run prepare table code in isolation
# source("R/prepareTable.R")
# getID = function(x) {
#   x = gsub(pattern = "meta_", replacement = "", x = x)
#   return(unlist(strsplit(x, idsep))[1])
# }
# ids = unlist(lapply(dir(paste0(GGIRoutputdir, "/meta/basic"), full.names = FALSE), FUN = getID))
# 
# # id_needed = grep("Z010195EM", ids, value = TRUE)
# id_needed = "RTM15"
# data = prepareTable(GGIRoutputdir, id = id_needed,
#                     lang = lang,
#                     quartile_thresholds = quartile_thresholds) #maskingFile = maskingFile
# print(data)
# # # No sleep example: C010066EM
# # # Normal example: C010001OA
# kkk


# Run code as called from within Markdown
createReport(GGIRoutputdir = GGIRoutputdir,
            lang = lang, idsep = idsep, desiredtz = desiredtz,
            type = "onepage_luxsleepactcr_A4",
            deviceName = "GENEActiv", quartile_thresholds = quartile_thresholds,
            sri = TRUE,
            luxperday = TRUE,
            table_format = table_format,
            maskingFile = NULL) #maskingFile)

