# EDA básico para el conjunto de datos de tráfico urbano (6405 observaciones)
library(tidyverse)

# 1. Estructura y resumen de variables
glimpse(datos)
summary(datos)

# 2. Detección de valores faltantes
colSums(is.na(datos))

# 3. Estadísticos principales de tráfico
datos %>%
  summarise(
    vehiculos_prom = mean(vehiculos),
    vehiculos_max = max(vehiculos),
    velocidad_prom = mean(velocidad_kmh),
    velocidad_min = min(velocidad_kmh)
  )

# 4. Tráfico agrupado por hora promedio
datos %>%
  group_by(hora = round(hora)) %>%
  summarise(vehiculos_promedio = mean(vehiculos))