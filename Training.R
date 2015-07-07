# New try at downloading google docs 
dl_from_GoogleD <- function(output, key, format) {
  
  ## Arguments:
  ## output = output file name
  ## key = Google document key
  ## format = output format (pdf, rtf, doc, txt..)
  ## Note: File must be shareable!
  
  require(RCurl)
  bin <- getBinaryURL(paste0("https://docs.google.com/document/d/", key, 
                             
          "/export?format=", format),
          ssl.verifypeer = FALSE)
  con <- file(output, open = "wb")
  writeBin(bin, con)
  close(con)
  message(noquote(paste(output, "read into", getwd())))                        
}

dl_from_GoogleD(output = "training.txt", 
                key = "0AjqT5C2L9dEldG0yME8zN0JoNVF2V1d2YnBoTmlVZXc#gid",
                format = "txt")
training <- read.table("training.txt", header = TRUE)