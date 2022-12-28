from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()

customers = spark.createDataFrame(
    [
        (1, "customer_1"),  # create your data here, be consistent in the types.
        (2, "customer_2"),
        (3, "customer_3"),
    ],
    ["id", "login"]  # add your column names here
)

customers.show()

orders = spark.createDataFrame(
    [
        (1, 1, 50),
        (2, 2, 10),
        (3, 2, 10),
        (5, 1000, 19)
    ],
    ["id", "customer_id", "login"]  # add your column names here
)


order_customer = orders.join(customers, orders["customer_id"] == customers["id"], "inner")


order_customer.show()