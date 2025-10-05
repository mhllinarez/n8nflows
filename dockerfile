# Usa la imagen oficial más reciente
FROM n8nio/n8n:latest

# El usuario por defecto ya es 'node' y el directorio de trabajo es '/home/node'
# El directorio de datos por defecto de n8n es '/home/node/.n8n'

# Corrige el puerto de la aplicación de n8n
EXPOSE 5678

# *Opcional:* Si necesitas crear un directorio para algo específico (ej. archivos binarios),
# y asegurar que el usuario 'node' tenga acceso, puedes usar:
# USER root
# RUN mkdir -p /files && chown -R node:node /files
# USER node
# VOLUME /files 
