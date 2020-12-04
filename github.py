

import requests

r = requests.get('https://api.github.com/users/dunncreativess/repos').json()
repos = []
for repo in r:
    repos.append(repo['name'])
print(repos)