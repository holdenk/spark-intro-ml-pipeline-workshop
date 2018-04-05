
# spark-intro-ml-pipeline-workshop

This starts off as a simple introduction to using spark ml pipelines for Spark 2.2+. This assumes you have access to a Spark cluster, if you don't for the code lab you can run Spark in local mode or you can also check out Google's hosted Dataproc enviroment ( https://cloud.google.com/dataproc/ ) or try it on GKE with https://cloud.google.com/blog/big-data/2018/03/testing-future-apache-spark-releases-and-changes-on-google-kubernetes-engine-and-cloud-dataproc .

## Getting started

### Python

Check out `Machine Learning Pipeline Example.ipynb`. You should have PySpark installed (which can be installed with `pip install pyspark`).

### Scala

Check out `spark-intro-ml-scala.ipynb`. You will need a Scala Spark notebook interface.
If notebooks are not your thing, feel free to use g8 template from https://github.com/holdenk/sparkProjectTemplate.g8 to roll a "regular" Spark project and move your code there.

## Next Steps

Depending on what you want to explore there are three distinct adventures (or you can do all):

- Replace the provided dataset with another one

As fun as census data is, its likely your problems don't look too much like it. If you've got some sample data that you car about, try it and see if we can build a useful classifier for it with this pipeline (likely we'll need more pre-processing but that's cool too).

- Try a different algorithm from Spark's built in algorithms (or look at spark-packages for an add-on)

Here you can look at the different models listed in https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.ml.classification.package and see what might be a fit. This can be done inside your existing notebook or project.

- Save the trained model and figure out how to serve it.

For this one your likely going to want a new project capable of loading Spark's own model format - you can use the g8 template https://github.com/holdenk/sparkProjectTemplate.g8 to get started.

This option has a few different approaches. One is to look for a package capable of serving the models (some like https://github.com/Hydrospheredata/spark-ml-serving work with out creating a Spark context but only support certain models), others use a SparkContext in local mode to give you all of the stages but at some additional overhead. Try predicting a single element on a local SparkContext and consider the overhead when choosing your approach.

The most "production ready" approach tends to involve writing a serving layer entirely, which is somewhat beyond the scope of this lab.

If all of these options make you go ugh, that's why things like https://github.com/kubeflow/kubeflow have me really excited about their potential once we add more practical things besides tensorflow to them (come join us in making that happen!).
