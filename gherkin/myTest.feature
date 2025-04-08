Feature: login_ko_ok

	Background:
		#@POEI20252-540
		Given iiii
		When oooo
		Then pppp

	@POEI20252-514 @ilhem
	Scenario: connexion ko
		Given Ouvrir l'application para bank dans le navigateur
		When saisir le username "johnny"
		And Saisir le mot de passe "demo"
		And Cliquer sur le bouton de connexion
		Then Redirection vers le compte utilisateur
		
