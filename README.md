# widgets_app

A new Flutter project.

-->Pasos para hacer primer commit<--
1. git init
2. git add .
3. git commit -m "first commit"
4. git remote add origin https://github.com/NOMBRE_USUARIO/NOMBRE_PROYECTO.git
5. git push -u origin master

-->Flujo de la Arquitectura Limpia<--
1. UI: Tiene la comunicacion con la capa de presentacion
2. Presentacion: Tiene providers o gestionadores de estado q terminan llamando los casos de uso
3. Casos de Uso: Se comunica con los repositorios //NO SE HACE EN ESTE PROYECTO
4. Repositorios y Datasources: Los repositorios llaman los datasources
5. Informacion: Y luego la informacion regresa al UI.