# 🏥 Cloud Run Docker Deployment (Arquitectura Colaborativa)

Este repositorio contiene la configuración base de infraestructura como código (IaC) utilizada para containerizar y desplegar una plataforma médica colaborativa en Google Cloud Run.

## 🚀 Enfoque Arquitectónico (DevOps)
* **Contenedores sin estado (Stateless):** Diseñados para escalar a cero y manejar picos de tráfico de forma automática en Cloud Run.
* **Seguridad y Cumplimiento:** Uso de variables de entorno inyectadas en tiempo de ejecución (Secret Manager) para proteger credenciales de bases de datos y tokens de APIs médicas.
* **Optimización:** Imagen base ligera de Alpine Linux para reducir el tamaño del contenedor, tiempos de arranque en frío (Cold Starts) y superficie de ataque.

> **Aviso:** El código de la aplicación (UI/Backend) y los certificados SSL se mantienen en repositorios corporativos privados.
