#!/usr/bin/python3
""" using certain REST API, for a given employee ID, returns
    information about his/her TODOs list progress
"""
import json
import requests
import sys


if __name__ == '__main__':
    users = requests.get(
        'https://jsonplaceholder.typicode.com/users').json()
    todos = requests.get(
        'https://jsonplaceholder.typicode.com/todos').json()

    tasks = {'{}'.format(user.get('id')): [{'username': user.get('username'),
                                            'task': task.get('title'),
                                            'completed': task.get('completed')}
                                           for task in todos]
             for user in users}
    with open("todo_all_employees.json", 'w') as jsonfile:
        json.dump(tasks, jsonfile)
