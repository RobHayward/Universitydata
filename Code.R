# http://blog.ouseful.info/2013/06/20/datagrabbing-commonly-
# formatted-sheets-from-a-google-
# spreadsheet-guardian-2014-university-guide-data/
library(RCurl)
gsqAPI = function(key,query,gid=0){
  tmp=getURL( paste( sep="",'https://spreadsheets.google.com/tq?', 
                     'tqx=out:csv','&tq=', curlEscape(query), '&key=', 
                     key, '&gid=', gid), ssl.verifypeer = FALSE )
  return( read.csv( textConnection( tmp ),  stringsAsFactors=F ) )
}
# Function to download data from Google datasheet
handler=function(key,i){
  tmp=gsqAPI(key,"select * where B!=''", i)
  subject=sub(".Rank",'',colnames(tmp)[1])
  colnames(tmp)[1]="Subject.Rank"
  tmp$subject=subject
  tmp
}
key='0Aq73qj3QslDedHFNdUsxOVZQZ1dmbXNrYlZGUWgwdHc'
gdata=handler(key,2)
for (i in 3:47){
  gdata=rbind(gdata,handler(key,i))
}
str(gdata)
uni <- subset(gdata, Name.of.Institution == "Brighton")
Economics <- subset(gdata, subject == "Economics")
BE <- subset(uni, subject == "Economics")
Bus <- (subset(gdata, subject == "Business.and.management.studies"))
str(Economics)
table(gdata$subject == "Economics")
require(graphics)
Mosaicplot(gdata$subject == "Economics")