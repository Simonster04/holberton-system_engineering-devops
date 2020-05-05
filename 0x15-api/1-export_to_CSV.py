#!/usr/bin/python3
""" using certain REST API, for a given employee ID, returns
    information about his/her TODOs list progress.
    Export data in the CSV format.
"""
import csv
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

    with open('{}.csv'.format(userid), 'w', newline='') as csvfile:
        tasks = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        for task in todos:
            tasks.writerow([int(userid), user.get('username'),
                            task.get('completed'), task.get('title')])
