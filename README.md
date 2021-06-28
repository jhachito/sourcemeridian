# PASOS PARA EJECUTAR EL PROYECTO SOURCE ETL

# Script de la data base
  El script se encuentra en la ruta database/script_source_DB.sql
  ejecutarlo de manera secuencial para crear las tablas
    -users
    -recipe
    -interaction
    -raw_interaction
    -raw_recipes

# Dataset
  en la raiz del proyecto deben quedar los archivos .csv dentro de una carpeta llamada dataset/ y con esta se va alimentar la base de datos
  dataset/
    interactions_test.csv
    interactions_train.csv
    interactions_validation.csv
    PP_recipes.csv
    PP_users.csv
    RAW_interactions.csv
    RAW_recipes.csv
  
# Librerias a utilizar
  greenlet==1.1.0
  numpy==1.21.0
  pandas==1.2.5
  PyMySQL==1.0.2
  python-dateutil==2.8.1
  pytz==2021.1
  six==1.16.0
  SQLAlchemy==1.4.19

# Definicion del proyecto
  El proyecto esta estruturado de la siguiente manera, en la carpeta dataset encontramos a 7 archivos .csv que seran leidos uno a uno y posteriormente ir poblando la dase de datos
  en el siguiente orden users, recipe, interaction, raw_interaction, raw_recipes
