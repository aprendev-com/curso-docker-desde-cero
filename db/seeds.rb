cat_names = ["Garfield", "Felix", "Tom", "Simba", "Figaro", "Tigger"]

cats = cat_names.map { |name| { name: name } }

Cat.insert_all(cats)
