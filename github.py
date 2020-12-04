

import requests

r = requests.get('https://api.github.com/users/dunncreativess/repos').json()
repos = []
for repo in r:
    repos.append(('https://dunncreativess:{personalaccesstoken}@github.com/dunncreativess/' + repo['name']))
print(repos)