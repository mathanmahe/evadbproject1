import evadb

cursor = evadb.connect().cursor()

print(cursor.query("Show functions;").df())

