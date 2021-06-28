

# start data_type
users_data_type = {'u': int, 'techniques': str, 'items': str, 'n_items': int, 'ratings': str, 'n_ratings': int}
recipe_data_type = {'id': int, 'i': int,  'name_tokens': str, 'ingredient_tokens': str, 'steps_tokens': str, 'techniques': str, 'calorie_level': int, 'ingredient_ids': str}
interaction_data_type = {'id': int, 'user_id': int, 'recipe_id': int, 'date': str, 'rating': str, 'u': int, 'i': int}
raw_interactions_data_type = {'user_id': int, 'recipe_id': int, 'date': str, 'rating': int, 'review': str, 'id': int}
raw_recipe_date_type = {'id': int, 'name': str, 'minutes': int, 'contributor_id': int, 'submitted': str, 'tags': str, 'nutrition': str, 'n_steps': int, 'steps': str, 'description': str, 'ingredients': str, 'n_ingredients': int}


# URL file
pp_users_file = "dataset/PP_users.csv"
pp_recipes_file = "dataset/PP_recipes.csv"
interactions_tes_file = "dataset/interactions_test.csv"
interactions_train_file = "dataset/interactions_train.csv"
interactions_validation_file = "dataset/interactions_validation.csv"
raw_interactions_file = "dataset/RAW_interactions.csv"
raw_recipes_file = "dataset/RAW_recipes.csv"

# table
users = "users"
recipe = "recipe"
interaction = "interaction"
raw_interactions = "raw_interaction"
raw_recipes = "raw_recipes"
