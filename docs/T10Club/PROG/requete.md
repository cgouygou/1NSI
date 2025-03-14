# Défi par requête web

## Challenges Pydéfis/c0d1ngUP

Pour certains défis les données d'entrée ne sont pas visibles, il faut les récupérer par une requête de type `#!py get`  et renvoyer le résultat également par une requête de type `#!py post`.

On utilisera pour cela le module `#!py requests`.

```python linenums='1'
import requests as rq

'''
Première requête de type get pour récupérer les données.
- url_entree: donnée dans le problème, format str (entre quotes)
- data: dictionnaire, contenant les données du problème
'''
r = requests.get(url_entree, verify=True)
data = r.json()

... # résolution du problème, dans une variable "solution" par ex.

'''
Deuxième requête en fin de programme de type post pour envoyer la réponse.
- url_sortie: donnée dans le problème, format str (entre quotes)
- solution: dictionnaire, contenant la solution du problème
'''
r = requests.post(url_sortie, json=solution, verify=True)
print(r.json())
```

!!! info "Signature"
    Dans les challenges pydéfis, le dictionnaire récupéré contient une signature, associé à la clé `#!py 'signature'` . Il ne faut donc pas oublier d'ajouter cette signature au dictionnaire renvoyée par:
    ```python
    solution['signature'] = data['signature']
    ```
    


<!-- ## Autres challenges -->