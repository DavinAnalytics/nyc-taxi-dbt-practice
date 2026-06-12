# Project: nyc-taxi-dbt-practice

## Project Overview
**Objective**. End-to-end dbt pipeline that ingests synthetic NYC taxi trip data, cleans it in a staging layer, aggregates it into a daily performance mart, and validates it with 9 automated tests.
## How to Run

### Tools
- Vs code
- Anaconda or pip
- python, duckdb, sql
- Dbt extension

### Steps to Run
1. Create sample CSV manually
2. Install Python via Miniconda
3. Install dbt: pip install dbt-core==1.8.0 dbt-duckdb==1.8.0
4. Run dbt init
5. Run dbt seed
6. Create staging model and marts model
7. Create schema.yml with tests
8. Run dbt run
9. Run dbt test
10. Run dbt docs generate
11. Run dbt docs serve
12. Create GCP (Google Cloud Platform) project
13. Enable BigQuery API
14. Create a service account and download JSON key
15. Add a second target (bigquery) in profiles.yml
16. run dbt debug --target bigquery
16. Run dbt seed --target bigquery
17. Run dbt run --target bigquery
18. Run dbt test --target bigquery



## What I Learned
- how ref() handles dependencies automatically so models run in the right order
- the difference between staging (clean raw data) and marts (business logic)
- how to navigate through GCP, create service account, enable API, and connect dbt to BigQuery 
- Same dbt models run against both DuckDB locally and BigQuery in the cloud with zero SQL changes with --target bigquery

## Lineage Graph
![Lineage Graph](assets/lineage_graph.png)


