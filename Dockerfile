# Etapa de construcción
# Usa una imagen base de Node.js para construir y ejecutar el proyecto
FROM node:20.17-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala Angular CLI globalmente con la versión especificada
RUN yarn global add @angular/cli@18.0.6

# Copia los archivos package.json y yarn.lock al directorio de trabajo
COPY package.json yarn.lock ./

# Instala las dependencias del proyecto especificadas en package.json
RUN yarn install

# Copia el resto de los archivos del proyecto al directorio de trabajo
COPY . .

# Expone el puerto 4200, que es el puerto por defecto para las aplicaciones Angular
EXPOSE 4200

# Comando por defecto para ejecutar la aplicación Angular en modo desarrollo
CMD ["ng", "serve", "--port", "4200", "--host", "0.0.0.0"]
