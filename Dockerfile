# Usar una imagen oficial ligera de PHP con Apache
FROM php:8.1-apache

# Configurar el puerto 8080 requerido por Google Cloud Run
RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
ENV PORT=8080

# Habilitar mod_rewrite para enrutamiento moderno y APIs
RUN a2enmod rewrite

# Instalar extensiones de PHP necesarias para conexiones a bases de datos (Cloud SQL)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar el código sanitizado al directorio público
COPY ./src/ /var/www/html/

# Configurar permisos seguros
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Exponer el puerto
EXPOSE 8080

# Iniciar Apache en primer plano
CMD ["apache2-foreground"]
