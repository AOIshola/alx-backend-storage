#!/usr/bin/env python3
"""module fetches schools with a particular topic"""


def schools_by_topic(mongo_collection, topic):
    """returns the list of school having a specific topic"""
    schools_teaching_topic = mongo_collection.find(
            {"topics": {"$in": [topic]}})
    return list(schools_teaching_topic)
