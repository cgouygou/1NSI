# Préparation à c0d1ng UP

![](../images/codingup_banner.webp){: .center} 

!!! info "Défi par requête web"
    Ce genre de défi donne deux url: l'une pour récupérer les données (méthode get), l'autre pour envoyer votre réponse (méthode POST). On va effectuer des requêtes à ces url via le module `requests`.

    ![](../images/urls.png){: .center width=35%} 

    ```python linenums='1'
    import requests

    # On fait une requête (GET) à la première adresse (copiez-collez l'adresse):
    r = requests.get("http...")
    
    # On récupère le texte contenu dans la page récupérée:
    data = r.text.split("\n") 

    # On résout le défi !
    # On stocke par exemple la réponse dans une variable nommée... reponse


    # On répond avec une requête (POST) à la deuxième adresse (copiez-collez l'adresse).
    # On renvoie en fait un dictionnaire, où "sig" est la signature contenue dans la première
    # ligne du texte (c-a-d data[0]), et où "rep" est la valeur de la réponse...
    ans = requests.post("http...", {"sig": data[0], "rep": reponse})

    # On affiche le résultat de la requête pour contrôler
    print(ans.text) 
    ```

    Pour s'entraîner: 

    [https://pydefis.callicode.fr/defis/ExempleURL/txt](https://pydefis.callicode.fr/defis/ExempleURL/txt){:target="_blank"} 

    [https://pydefis.callicode.fr/defis/BaladeEchiquier/txt](https://pydefis.callicode.fr/defis/BaladeEchiquier/txt){:target="_blank"} 