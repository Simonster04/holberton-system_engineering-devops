#!/usr/bin/python3
""" Contains number_of_subscribers() method """
from pprint import pprint
import requests


def number_of_subscribers(subreddit):
    """ Returns the number of subscribers for a given subreddit """
    subr = requests.get('https://www.reddit.com/r/{}/about.json'
                        .format(subreddit),
                        headers={"User-Agent": "Simon & Lennox"},
                        allow_redirects=False).json()
    if 'data' in subr and 'subscribers' in subr.get('data'):
        return(subr['data']['subscribers'])
    return 0
