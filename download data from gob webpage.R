# URL's de descarga
url_2006 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2006_csv.csv"
url_2007 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2007_csv.csv"
url_2008 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2008_csv.csv"
url_2009 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2009_csv.csv"
url_2010 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2010_csv.csv"
url_2011 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2011_csv.csv"
url_2012 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2012_csv.csv"
url_2013 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2013_csv.csv"
url_2014 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2014_csv.csv"
url_2015 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2015_csv.csv"
url_2016 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2016_csv.csv"
url_2017 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2017_csv.csv"
url_2018 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2018_csv.csv"
url_2019 <- "https://sede.sepe.gob.es/es/portaltrabaja/resources/sede/datos_abiertos/datos/Paro_por_municipios_2019_csv.csv"

# DESCARGAR Y GUARDAR EN DATA FRAMES
data_2006 <- read.csv(url_2006, sep = ";", skip = 2, header= F)
data_2007 <- read.csv(url_2007, sep = ";", skip = 2, header= F)
data_2008 <- read.csv(url_2008, sep = ";", skip = 2, header= F)
data_2009 <- read.csv(url_2009, sep = ";", skip = 2, header= F)
data_2010 <- read.csv(url_2010, sep = ";", skip = 2, header= F)
data_2011 <- read.csv(url_2011, sep = ";", skip = 2, header= F)
data_2012 <- read.csv(url_2012, sep = ";", skip = 2, header= F)
data_2013 <- read.csv(url_2013, sep = ";", skip = 2, header= F)
data_2014 <- read.csv(url_2014, sep = ";", skip = 2, header= F)
data_2015 <- read.csv(url_2015, sep = ";", skip = 2, header= F)
data_2016 <- read.csv(url_2016, sep = ";", skip = 2, header= F)
data_2017 <- read.csv(url_2017, sep = ";", skip = 2, header= F)
data_2018 <- read.csv(url_2018, sep = ";", skip = 2, header= F)
data_2019 <- read.csv(url_2019, sep = ";", skip = 2, header= F)

# JUNTAR EN UN DATAFRAME
data <- rbind(data_2006,data_2007,data_2008,data_2009,data_2010,data_2011,data_2012,
              data_2013,data_2014,data_2015,data_2016,data_2017,data_2018,data_2019)
colnames(data) <- c("Codigo mes","mes", "Codigo de CA","Comunidad Autonoma",
                    "Codigo Provincia","Provincia","Codigo Municipio","Municipio",
                    "total Paro Registrado","Paro hombre edad < 25",
                    "Paro hombre edad 25 -45","Paro hombre edad >=45",
                    "Paro mujer edad < 25","Paro mujer edad 25 -45","Paro mujer edad >=45",
                    "Paro Agricultura","Paro Industria", "Paro Construccion",
                    "Paro Servicios","Paro Sin empleo Anterior")

# DESCARTAR VARIABLES QUE NO VAMOS A USAR
dataset2 <- data[,c(1,3,9)]

# SEPARO EL DATASET POR COMUNIDADES AUTÓNOMAS
ts_Andalucia <- dataset2[dataset2$`Codigo de CA`== 1,c(1,3)]
ts_Aragon <- dataset2[dataset2$`Codigo de CA`== 2,c(1,3)]
ts_Asturias <- dataset2[dataset2$`Codigo de CA`== 3,c(1,3)]
ts_Baleares <- dataset2[dataset2$`Codigo de CA`== 4,c(1,3)]
ts_Canarias <- dataset2[dataset2$`Codigo de CA`== 5,c(1,3)]
ts_Cantabria <- dataset2[dataset2$`Codigo de CA`== 6,c(1,3)]
ts_Castilla_Leon <- dataset2[dataset2$`Codigo de CA`== 7,c(1,3)]
ts_Castilla_Mancha <- dataset2[dataset2$`Codigo de CA`== 8,c(1,3)]
ts_Cataluna <- dataset2[dataset2$`Codigo de CA`== 9,c(1,3)]
ts_Comunidad_Valenciana <- dataset2[dataset2$`Codigo de CA`== 10,c(1,3)]
ts_Extremadura <- dataset2[dataset2$`Codigo de CA`== 11,c(1,3)]
ts_Galicia <- dataset2[dataset2$`Codigo de CA`== 12,c(1,3)]
ts_Madrid <- dataset2[dataset2$`Codigo de CA`== 13,c(1,3)]
ts_Murcia <- dataset2[dataset2$`Codigo de CA`== 14,c(1,3)]
ts_Navarra <- dataset2[dataset2$`Codigo de CA`== 15,c(1,3)]
ts_Pais_Vasco <- dataset2[dataset2$`Codigo de CA`== 16,c(1,3)]
ts_Rioja <- dataset2[dataset2$`Codigo de CA`== 17,c(1,3)]
ts_Ceuta <- dataset2[dataset2$`Codigo de CA`== 18,c(1,3)]
ts_Melilla <- dataset2[dataset2$`Codigo de CA`== 19,c(1,3)]

# SUMO LAS FILAS QUE TIENEN EL MISMO MES Y AÑO DE CADA SERIE TEMPORAL
ts_Andalucia <- rowsum(ts_Andalucia, group = ts_Andalucia$`Codigo mes`)
ts_Aragon <- rowsum(ts_Aragon , group = ts_Aragon$`Codigo mes`)
ts_Asturias <- rowsum(ts_Asturias, group = ts_Asturias$`Codigo mes`)
ts_Baleares <- rowsum(ts_Baleares, group = ts_Baleares$`Codigo mes`)
ts_Canarias <- rowsum(ts_Canarias, group = ts_Canarias$`Codigo mes`)
ts_Cantabria <- rowsum(ts_Cantabria, group = ts_Cantabria$`Codigo mes`)
ts_Castilla_Leon <- rowsum(ts_Castilla_Leon, group = ts_Castilla_Leon$`Codigo mes`)
ts_Castilla_Mancha <- rowsum(ts_Castilla_Mancha, group = ts_Castilla_Mancha$`Codigo mes`)
ts_Cataluna <- rowsum(ts_Cataluna, group = ts_Cataluna$`Codigo mes`)
ts_Comunidad_Valenciana <- rowsum(ts_Comunidad_Valenciana, group = ts_Comunidad_Valenciana$`Codigo mes`)
ts_Extremadura <- rowsum(ts_Extremadura, group = ts_Extremadura$`Codigo mes`)
ts_Galicia <- rowsum(ts_Galicia, group = ts_Galicia$`Codigo mes`)
ts_Madrid <- rowsum(ts_Madrid, group = ts_Madrid$`Codigo mes`)
ts_Murcia <- rowsum(ts_Murcia, group = ts_Murcia$`Codigo mes`)
ts_Navarra <- rowsum(ts_Navarra, group = ts_Navarra$`Codigo mes`)
ts_Pais_Vasco <- rowsum(ts_Pais_Vasco, group = ts_Pais_Vasco$`Codigo mes`)
ts_Rioja <- rowsum(ts_Rioja, group = ts_Rioja$`Codigo mes`)
ts_Ceuta <- rowsum(ts_Ceuta, group = ts_Ceuta$`Codigo mes`)
ts_Melilla <- rowsum(ts_Melilla, group = ts_Melilla$`Codigo mes`)

# JUNTO TODO EN UN DATA SET: 
# la primera columna es la fecha, las siguientes son las provincias
data_final <- data.frame(date = row.names(ts_Andalucia),
                   Andalucia = ts_Andalucia$`total Paro Registrado`,
                   Aragon = ts_Aragon$`total Paro Registrado`,
                   Asturias = ts_Asturias$`total Paro Registrado`,
                   Baleares = ts_Baleares$`total Paro Registrado`,
                   Canarias = ts_Canarias$`total Paro Registrado`,
                   Cantabria = ts_Cantabria$`total Paro Registrado`,
                   `Castilla y Leon` = ts_Castilla_Leon$`total Paro Registrado`,
                   `Castilla la Mancha` = ts_Castilla_Mancha$`total Paro Registrado`,
                   Cataluna = ts_Cataluna$`total Paro Registrado`,
                   `Cominudad Valenciana` = ts_Comunidad_Valenciana$`total Paro Registrado`,
                   Extremadura = ts_Extremadura$`total Paro Registrado`,
                   Galicia = ts_Galicia$`total Paro Registrado`,
                   Madrid = ts_Madrid$`total Paro Registrado`,
                   Murcia = ts_Murcia$`total Paro Registrado`,
                   Navarra = ts_Navarra$`total Paro Registrado`,
                   `Pais Vasco` = ts_Pais_Vasco$`total Paro Registrado`,
                   `La Rioja` = ts_Rioja$`total Paro Registrado`,
                   Ceuta = ts_Ceuta$`total Paro Registrado`,
                   Melilla = ts_Melilla$`total Paro Registrado`)

write.csv(data_final,"Paro_España.csv")

