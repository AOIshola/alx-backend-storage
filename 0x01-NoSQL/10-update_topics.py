#!/usr/bin/env python3
"""module updates topics of a document"""


def update_topics(mongo_collection, name, topics):
    mongo_collection.update_many({"name": name}, {"$set": {"topics": topics}})
