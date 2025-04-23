# read control files, create fcs_control.csv

# set the directory where the single-stained FCS files are:
fcs.control.dir <- "./20190121 Co-housing Tissue Treg/"

fcs.control.file <- data.frame(matrix(ncol = 4, nrow = length(list.files(fcs.control.dir))))
colnames(fcs.control.file) <- c("filename", "dye", "antigen", "wavelength")

fcs.control.file$filename <- list.files(fcs.control.dir)

write.csv(fcs.control.file, file = paste0(fcs.control.dir, "/fcs_control_file.csv"))