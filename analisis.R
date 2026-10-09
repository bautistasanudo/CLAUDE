library(ggplot2)

# Datos simulados de un experimento
datos <- data.frame(
  tiempo = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  medicion = c(2.1, 4.3, 5.8, 8.4, 10.1, 11.8, 14.2, 16.5, 17.9, 20.3)
)

# Modelo de regresión lineal
modelo <- lm(medicion ~ tiempo, data = datos)
print(summary(modelo))

# Gráfico de dispersión con línea de tendencia
ggplot(datos, aes(x = tiempo, y = medicion)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Regresión Lineal Simple", x = "Tiempo (s)", y = "Medición")
