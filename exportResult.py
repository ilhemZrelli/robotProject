from os import name
import subprocess
import json
import generateToken

url = "https://xray.cloud.getxray.app/api/v2/import/execution/robot?projectKey=POEI20252"
token =generateToken.token # Remplace par ton token réel

with open('output.xml', 'r') as file:
    xml_data = file.read()

command = [
    'curl',
    '-H', 'Content-Type: text/xml',
    '-X', 'POST',
    '-H', 'Authorization: Bearer {token}',
    '--data', xml_data,
    url
]

def send_request():
    print("Envoi de la requête POST pour l'importation...")
    # Exécution
    try:
        result = subprocess.run(command, capture_output=True, text=True, check=True)
        print("Réponse du serveur 😊")
        print(result.stdout)  # Afficher la réponse
    except subprocess.CalledProcessError as e:
        print("Erreur:", e.stderr)

send_request()