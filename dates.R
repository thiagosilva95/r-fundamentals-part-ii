# Time e Datas

hoje <- Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()

# Formatando Time
?strptime

# Formatando a saída - as.Date()
as.Date("2016-06-28")
as.Date("Jun-28-16", format = "%b-%d-%y")
as.Date("28 June, 2016", format = "%d %B, %Y")

format(Sys.Date(), format = "%d %B, %Y")
format(Sys.Date(), format = "Hoje é %A")

date1 <- "Jun 13, '96 hours:23 minutes:01 seconds:45"
date1_convert <- as.POSIXct(date1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
date1_convert

# Operações com datas
data_de_hoje <- as.Date("2016-06-25", format = "%Y-%m-%d")
data_de_hoje
data_de_hoje +1

my_time <- as.POSIXct("2016-05-14 11:24:134")
my_time
my_time +1

data_de_hoje <- as.Date(my_time)

# Convertendo Data em formato específico
dts = c(1127056501,1104295502,1129233601,1113547501,1119826801,1132519502,1125298801,1113289201)
mydates = dts
class(mydates) = c("Posixt", "POSIXct")
mydates

mydates = structure(dts, class = c("Posixt", "POSIXct"))
mydates

# Função ISODate
b1 = ISOdate(2011, 3, 23)
b1

difftime(b2, b1, units = "weeks")

?lubridate
install.packages("lubridate")
require(lubridate)

ymd(20160604)
mdy("06-04-2016")
dmy("04/06/2016")
