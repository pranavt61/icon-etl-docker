curl -X POST \
  localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{
  "name": "blocks-mongo-sink",
  "config": {
    "connector.class": "com.mongodb.kafka.connect.MongoSinkConnector",
    "topics": "blocks",
    "tasks.max": "1",
    "database": "icon",
    "collection": "blocks",
    "key.converter": "io.confluent.connect.json.JsonSchemaConverter",
    "key.converter.schema.registry.url": "http://schemaregistry:8081",
    "value.converter": "io.confluent.connect.json.JsonSchemaConverter",
    "value.converter.schema.registry.url": "http://schemaregistry:8081",
    "connection.uri": "mongodb://mongo:changethis@mongodb:27017"
  }
}'

curl -X POST \
  localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{
  "name": "logs-mongo-sink",
  "config": {
    "connector.class": "com.mongodb.kafka.connect.MongoSinkConnector",
    "topics": "logs",
    "tasks.max": "1",
    "database": "icon",
    "collection": "logs",
    "key.converter": "io.confluent.connect.json.JsonSchemaConverter",
    "key.converter.schema.registry.url": "http://schemaregistry:8081",
    "value.converter": "io.confluent.connect.json.JsonSchemaConverter",
    "value.converter.schema.registry.url": "http://schemaregistry:8081",
    "connection.uri": "mongodb://mongo:changethis@mongodb:27017"
  }
}'

curl -X POST \
  localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{
  "name": "transactions-mongo-sink",
  "config": {
    "connector.class": "com.mongodb.kafka.connect.MongoSinkConnector",
    "topics": "transactions",
    "tasks.max": "1",
    "database": "icon",
    "collection": "transactions",
    "key.converter": "io.confluent.connect.json.JsonSchemaConverter",
    "key.converter.schema.registry.url": "http://schemaregistry:8081",
    "value.converter": "io.confluent.connect.json.JsonSchemaConverter",
    "value.converter.schema.registry.url": "http://schemaregistry:8081",
    "connection.uri": "mongodb://mongo:changethis@mongodb:27017"
  }
}'
