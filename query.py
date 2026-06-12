import duckdb

con = duckdb.connect(r"C:/Users/Davin/python-projects/Analyst & Data Engineer Portfolio/nyc-taxi-dbt-practice/nyc_taxi/dev.duckdb")

sql = """
select * from main.fct_taxi_trips
"""

print(con.execute(sql).df())