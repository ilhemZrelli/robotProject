import subprocess
import json

#Configuration
url = "https://xray.cloud.getxray.app/api/v2/authenticate"
data = {
    "client_id": "6E635966EBAA4D79BED0403429B9568F",
    "client_secret": "325cd0f88ba4d83360cae863783ad63c06a274e8b2e8820a134a8af91a410bc0"
}
url_export="https://xray.cloud.getxray.app/api/v2/import/execution/robot?projectKey=POEI20252"

#Conversion des données en JSON
json_data = json.dumps(data)

#Construction de la commande curl
command = [
    'curl',
    '-H', 'Content-Type: application/json',
    '-X', 'POST',
    '--data', json_data,
    url
]


token = None

def get_token():
    print("Génération d'un token jwt...")
    # Exécution
    try:
        result = subprocess.run(command, capture_output=True, text=True, check=True)
        global token
        token = result.stdout.strip().replace('"', '')
        # Affichage du token
        print("Token généré avec succès ! 😊")
        print(token)
    except subprocess.CalledProcessError as e:
        print("Erreur:", e.stderr)
get_token()