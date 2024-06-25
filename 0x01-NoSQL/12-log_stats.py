#!/usr/bin/env python3
"""Provide Nginx stats"""


if __name__ == "__main__":
    from pymongo import MongoClient

    client = MongoClient("mongodb://localhost:27017/")
    database = client.logs
    collection = database.nginx

    num_logs = collection.count_documents({})
    print(f"{num_logs} logs")

    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    print("Methods:")

    for method in methods:
        count_docs = collection.count_documents({"method": method})
        print(f"\tmethod {method}: {count_docs}")

    status_checks = collection.count_documents(
            {"method": "GET", "path": "/status"})
    print(f"{status_checks} status check")
