#!/usr/bin/python3
""" Contains count_words() method """
import requests


def count_words(subreddit, word_list):
    """ Parses the title of all hot articles, and prints a sorted
    count of given keywords """
    hotp = requests.get('https://www.reddit.com/r/{}/hot.json'
                        .format(subreddit),
                        headers={"User-Agent": "Simon & Lennox"},
                        allow_redirects=False)
    if hotp.status_code != 200:
        print()
    else:
        my_dict = {}
        hotp = hotp.json()
        for word in word_list:
            counter = 0
            for post in hotp['data']['children']:
                counter += post['data']['title'].count(word)
            if counter != 0:
                my_dict[word] = counter
        if len(my_dict) == 0:
            print()
        else:
            for word in sorted(my_dict.keys()):
                print("{}: {}".format(word, my_dict[word]))