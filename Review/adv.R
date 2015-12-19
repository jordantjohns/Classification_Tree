filename ="adv.html"
swirlfile <- .path_to_file("Classification_Tree", "Review/html", filename)
tf <- tempfile()
dir.create(tf)
htmlfile = file.path(tf,filename)
file.copy(swirlfile,htmlfile)
if(rstudioapi::isAvailable()){
  rstudioapi::viewer(htmlfile)
}else{
  browseURL(htmlfile)
}