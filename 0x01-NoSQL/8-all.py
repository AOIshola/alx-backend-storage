#!/usr/bin/env python3
"""Module listing all documents in a collection"""


def list_all(mongo_collection):
    """lists all documents in a mongo_collection"""
    documents = list(mongo_collection.find())
    if not documents:
        return []
    return documents
