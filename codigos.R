

# Cargar las librerías necesarias
library(ggplot2)
library(dplyr)

# Filtrar los datos solo para los estímulos estáticos (IMAGEN y TEXTO)
filtered_data <- data %>%
  filter(tipo %in% c("IMAGEN", "TEXTO"))

# Crear el scatterplot
ggplot(filtered_data, aes(x = arousal_M, y = valencia_M, color = tipo, shape = tipo)) +
  geom_point(size = 3, alpha = 0.7) +
  scale_color_manual(values = c("IMAGEN" = "blue", "TEXTO" = "yellow")) +
  scale_shape_manual(values = c("IMAGEN" = 16, "TEXTO" = 15)) +
  xlim(1, 9) +
  ylim(1, 9) +
  labs(x = "Activación", y = "Valencia") +
  theme_minimal() +
  theme(legend.title = element_blank())


Este es el plot de emojis

ggplot(data |> 
         filter(
           poblacion == "all"
           ), 
       aes( x = Valence, 
            y = Arousal, 
            fill = Stimuli)) +
  geom_image(
    aes(
      image = Stimuli
      ), 
      size = .045) +
  #geom_point() +
  coord_flip() +
  ylim(c("1", "2", "3", "4", "5", "6", "7", "8")) +
  xlim(c("1", "2", "3", "4", "5", "6", "7", "8")) +
  xlab("Valencia") +
  ylab("Activación") +
  theme_minimal()
