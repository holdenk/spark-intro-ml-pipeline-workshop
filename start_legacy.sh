#!/bin/bash
IPYTHON_OPTS="notebook" ${SPARK_HOME}/bin/pyspark --packages com.databricks:spark-csv_2.10:1.3.0
