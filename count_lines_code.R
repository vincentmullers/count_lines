setwd("~/Data science/")
myfiles <- unique(list.files(pattern="\\.R$", recursive=TRUE))

lines_c = lapply(myfiles,function(x){length(readLines(x,skipNul = TRUE)[readLines(x,skipNul = TRUE) != ""])})
names(lines_c) <- myfiles

sum(unlist(lines_c))
sum(unlist(lines_c)[grepl("git/promotion_analysis",names(lines_c)) & !grepl("old",names(lines_c))])

object_c = lapply(myfiles,function(x){length(readLines(x,skipNul = TRUE)[!grepl(("^\\s|^#|^$"),readLines(x,skipNul = TRUE))])})
sum(unlist(object_c))

find_f = lapply(myfiles,function(x){length(readLines(x,skipNul = TRUE)[grepl(("try"),readLines(x,skipNul = TRUE))])})
names(find_f) <- myfiles

find_f[find_f > 0]


# desktop
setwd("~/../Desktop/")
myfiles <- unique(list.files(pattern="\\.R$", recursive=TRUE))

find_f = lapply(myfiles,function(x){length(readLines(x,skipNul = TRUE)[grepl(("nest"),readLines(x,skipNul = TRUE))])})
names(find_f) <- myfiles

lines_c = lapply(myfiles,function(x){length(readLines(x,skipNul = TRUE)[readLines(x,skipNul = TRUE) != ""])})
names(lines_c) <- myfiles

sum(unlist(lines_c))
