# Usa la imagen oficial más reciente de sdk como base
FROM n8nio/n8n:latest

# Cambia temporalmente al usuario root para ejecutar comandos con permisos elevados
USER root

# Crea el directorio /data (si no existe) y asigna la propiedad al usuario 'node'
# Esto asegura que node tenga acceso de escritura a este directorio
RUN mkdir -p /data && chown -R node:node /data

# Vuelve al usuario 'node', recomendado para ejecutar la aplicación de forma segura
USER node

# Declara /data como un volumen persistente
# Esto permite conservar la información de (p.ej., credenciales, etc.) fuera del contenedor
VOLUME /data

# Expone el puerto 8080, que es donde se ejecuta por defecto
EXPOSE 8080
