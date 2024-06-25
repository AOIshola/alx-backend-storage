#!/usr/bin/env python3
"""Top Students"""


def top_students(mongo_collection):
    """returns all students sorted by average score"""
    pipeline = [
            {
                "$project": {
                    "name": 1,
                    "topics": 1,
                    "averageScore": {"$avg": "$topics.score"}
                }
            },
            {"$sort": {"averageScore": -1}}
    ]
    top_students = mongo_collection.aggregate(pipeline)

    return list(top_students)
