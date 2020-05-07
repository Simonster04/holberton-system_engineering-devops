#!/usr/bin/python3
""" Contains top_ten() method """
import requests
from pprint import pprint


def top_ten(subreddit):
    """ Prints the titles of the first 10 hot posts listed for a given
    subreddit """
    hotp = requests.get('https://www.reddit.com/r/{}/hot.json'
                        .format(subreddit),
                        headers={"User-Agent": "Simon & Lennox"},
                        allow_redirects=False,
                        params={'limit': 10}).json()
    if 'error' in hotp:
        print(None)
    else:
        for post in hotp['data']['children']:
            print(post['data']['title'])
