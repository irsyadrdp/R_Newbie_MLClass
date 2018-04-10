ls(packages:frbs)
install.packages("frbs")	###install frbs	
library(frbs)			###untuk manggil packages frbs

?lm --> Linear Models


###vector
x <- c(0.5, 0.6)  

###matrix, index mulai dari 1
	m <- matrix(nrow = 2, ncol = 3)
	m <- matrix(1:6, nrow = 2, ncol = 3)
	m <- matrix(c(1:6), nrow=2, ncol=3, byrow=TRUE)	###functional programming
	?matrix 	###matrix documentation

	dd = c(1:10)
	class(dd)
	dd
	ee = as.matrix(dd, nrow=2)
	ee
	ee = as.matrix(dd)
	ee
	class(ee)

	is.matrix(dd)
	is.matrix(ee)
	class(ee)
	ee

	dd = c(1:6, "a")
	dd
	ee = matrix(c(1:6, "a", "b"), nrow=2)

	m[1,2]	###ngambil data di matrix

###combine matrix atau vector
###banyak data harus sama
	cc = c(1:10)
	dd = c(101:110)
	ee = rbind(cc,dd)	###gabung baris
	
	cc = c(1:10)
	dd = c(101:110)
	ee = cbind(cc,dd)	###gabung olom


###subsetting
	ll = cbind(ee,cc,cc,dd,dd,ee,ee)
	dim(ll)
	ll[, 5]	###dapetin kolom ke 5	
	ll[1:3, 5]	###daetin data 1 sampe 3 di kolom ke lima

###list
	f = list(1, "a", TRUE, 1+4i)	###number, character, logical, complex
	f
	length(f)
		
	f = list(1, "a", TRUE, list("tata", "sempak", FALSE, matrix(c(1:4))))
	f[4]
	f[[4]][1]

###factor
	ff = factor(c("yes","no"))
	ff

	unclass(ff)

###missing values
	x = c(1,2,NA,3,10)
	x

	?na.omit
	na.omit(x)		###melupakan variabel yg ga ada nilainya di x
	y = na.omit(x)
	y
	
	ff = matrix(runif(1000, 1, 10), nrow=100)	###runif untuk merandom dengan distributed normal
								###merandom 1000 angka antara 1 sampai 10, dan disusun dalam bentuk 100 baris
	head(ff)
	dim(ff)
	ff > 5 	###hasil keluarannya TRU FALSE
	which(ff>5)	###nilai ff yang mana yang nilainya lebih besar dari 5
	which(ff>5, arr.ind = TRUE)
	head(ind)
	ff[3,1]
	ff[4,1]
	ff[2,1]

	ind = which(ff>5, arr.ind = TRUE)	###index yg mana
	gg = ff[which(ff>5), drop = FALSE]	###ngeluarin nilainya

###data frames
###sama kaya matrix tapi elemennya bisa apapun, bisa heterogen jenis datanya
	x <- data.frame(foo = 1:4, bar=c(T,T,F,F))	###foo dan bar adalah nama kolom
	
	df = data.frame(foo = 1:6, bar=c(T,T,T,F,F,F))	
	df
	df[1,2]	###cara liat per elemennya sama kaya di matrix
	
	gg = cbind(df, c(4:9))	###ngegabung kolom df dengan data 4-9
	gg
	class(gg)	###untuk nyari tau tipe datanya

	gg[, 3]
	gg[1:3, 3]

###names
	f[[1]]
	names(f) = c("Jumlah", "Char", "Logical", "List", "Matrix" ) ###ngasih nama
	f$Matrix 	###tinggal manggil namanya aja
	f$List
	
	f$List[1]
	f$List[[1]]
	class(f$List[1])
	class(f$List[[1]])

	f$List[[1]] + 123123123	###nambah isi list dengan 123123123	





###read file
###filenya ada di desktop, berarti concolenya haris pindah directory dulu
	read.table(file="testR.txt", sep=" ")	###tentukan separator yg digunakan di dalam file	
	read.table(file="testR.txt", sep=" ", header=TRUE)	###kalo di file ada headernya	
	
	tab = read.table(file="testR.txt", sep=" ", header=TRUE)
	class(tab)
	write.table(tab, file="testR.txt")	###ngewrite file
	write.table(tab, file="testR.txt", col.names=FALSE, row.names=FALSE)	###/ngewrite file tapi gasama nama kolom dan row nya yg ada di R


###vectorized operations
	###contoh : penambahan matrix atau vector
		m
		m1 = m + 2
		g = m + m1
		
		v1 = (c(1:6))
		v2 = (c(2:7))
		sum(v1, v2)
		
		seq_along()	###akan menggenerate index
		set.seed

###function
	f = function()
	f <- function()

	luasPesegi <- function(p, l){
		return (p*l)			###gapake return juga gpp LHO !!!!!!!!!!!!
	}
	class(luasPersegi)
	p=2
	l=4
	luasPersegi(p,l)

	p = runif(10, 1, 10)	###tipe datanya vector
	p
	l = runif(10, 5, 10)	###tipe datanya vector
	l
	luasPersegi(p,l)
	luasPersegi		###nampilin functionnya
	
	source("luasPersegi.R")
	rm(list=ls())
	ls()
	source("luasPersegi.R")	###manggil fungsi yang ada di luar file
	
###plotting
	plot(runif(100, 0,1))			###titik
	plot(runif(100, 0,1, type="l"))	###line	
	

###apply

###    sapply(vec, f): input is a vector. output is a vector/matrix, where element i is f(vec[i]) [giving you a matrix if f has a multi-element output]
###    lapply(vec, f): same as sapply, but output is a list?
###    apply(matrix, 1/2, f): input is a matrix. output is a vector, where element i is f(row/col i of the matrix)
###    tapply(vector, grouping, f): output is a matrix/array, where an element in the matrix/array is the value of f at a grouping g of the vector, and g gets pushed to the row/col names
###    by(dataframe, grouping, f): let g be a grouping. apply f to each column of the group/dataframe. pretty print the grouping and the value of f at each column.
###    aggregate(matrix, grouping, f): similar to by, but instead of pretty printing the output, aggregate sticks everything into a dataframe.]


	appl(x, MARGIN=2, FUN=function(X) (X - min(X/diff(range(X)))
	dataX = fscale(dataX) ###-->liat kodingan ML Abravi
	
	###MARGIN 1 --> per baris
	###MARGIN 2 --> per kolom
	
	lapply --> menghitung tiap list, ngehindarin for
	napply -->
	
	###cari denormalisasi

###unclass --> ngerubah data category jadi numeric
	
	
	
	
	
	
	
	
	
	
	
	
	
	
