import uuid
import flask
stores={}
store_data = {"name":"Walmart"}

store_id = uuid.uuid4().hex
store = {**store_data, "id": store_id}
stores[store_id] = store

print(stores)