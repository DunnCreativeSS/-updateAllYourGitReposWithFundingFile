

import requests

r = requests.get('https://api.github.com/users/dunncreativess/repos').json()
repos = []
for repo in r:
    repos.append(('https://dunncreativess:aa2afcf2fac47be6010d717363d4de628e4c43a7@github.com/dunncreativess/' + repo['name']))
print(repos)