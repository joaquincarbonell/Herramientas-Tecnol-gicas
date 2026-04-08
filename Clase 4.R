df <- read.csv('https://raw.githubusercontent.com/asalber/manual-r/master/datos/colesterol.csv')
df
print(summary(df))
head(df, 5)
head(df, 2)
tail(df, 3)
df= data.frame(asignatura = c("Matemáticas", "Física", "Economía"), nota = c(8.5, 7, 4.5))
df
str(df)
# 1. Definir los cuatro vectores
alumno= c("Carlos", "María", "Carmen", "Pedro", "Luis", "Sara")
sexo= c("H", "M", "M", "H", "H", "M")
fisica= c(6.7, 7.2, 5.5, NA, 3.5, 6.2)
quimica= c(8.1, 9.5, 5.0, 4.5, 5.0, 4.0)

# 2. Convertir sexo en factor y mostrar sus niveles
sexo= factor(sexo)
levels(sexo)

# 3. Vector con la nota media de Física y Química
media= (fisica + quimica) / 2

# 4. Variable booleana aprobado (media >= 5)
aprobado= media >= 5

# 5. Filtrar nombres de alumnos que han aprobado
alumno[aprobado]

# 6. Crear el data frame
df= data.frame(alumno, sexo, fisica, quimica)

# 7. Añadir el vector media al data frame
df$media = media

# 8. Filtrar: mujeres que han aprobado → solo nombre y media
df[df$sexo == "M" & df$aprobado == TRUE, c("alumno", "media")]
# Alternativa más limpia:
df[sexo == "M" & aprobado, c("alumno", "media")]

