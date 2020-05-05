#!/usr/bin/python3
""" using certain REST API, for a given employee ID, returns
    information about his/her TODOs list progress
"""
import json
import requests
import sys


if __name__ == '__main__':
    userid = sys.argv[1]
    user = requests.get(
        'https://jsonplaceholder.typicode.com/users/{}'
        .format(userid)).json()
    todos = requests.get(
        'https://jsonplaceholder.typicode.com/todos?userId={}'
        .format(userid)).json()


    tasks = {'{}'.format(userid): [{'task': task.get('title'),
                                    'completed': task.get('completed'),
                                    'username': user.get('username')}
                                   for task in todos]}
    with open("{}.json".format(userid), 'w') as jsonfile:
        json.dump(tasks, jsonfile)
