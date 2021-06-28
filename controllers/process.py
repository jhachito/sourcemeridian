from database import db
from models import const
import pandas as pd
import timeit

def insert(df, table_name):
    df.to_sql(con=db.engine, name=table_name, if_exists='append', index=False)

def insert_users():
    table = "users"
    read_file(const.pp_users_file, const.users_data_type, table)

def insert_recipes():
    table = "recipe"
    read_file(const.pp_recipes_file, const.recipe_data_type, table)

def insert_interaction():
    dataset_interactions = [const.interactions_tes_file, const.interactions_train_file, const.interactions_train_file]
    table = "interaction"
    for index in dataset_interactions:
        read_file(index, const.users_data_type, table)

def insert_raw_interaction():
    table = "raw_interaction"
    read_file(const.raw_interactions_file, const.raw_interactions_data_type, table)

def insert_raw_recipes():
    table = "raw_recipes"
    read_file(const.raw_recipes_file, const.raw_recipe_date_type, table)

def read_file(file, data_type,table_name):
    start = timeit.timeit()
    cont = 0
    print('Table: ', table_name)
    print('File: ', file)
    try:
        for values in pd.read_csv(file, sep=',', dtype=data_type, chunksize=10000):
            #data = values[values['recipe_id'].notna()]
            data = values.dropna()
            insert(data, table_name)
            cont += len(values)
            print('# Data insert: ', cont)
        print(cont, ': Registros ingresados')
    except NameError:
        print("Error con el archivo: ", file)
    end = timeit.timeit()
    print("Tiempo de ejecucion: ", end - start)
