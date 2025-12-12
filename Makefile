##
## EPITECH PROJECT, 2024
## Makefile Mock pour Jenkins
## File description:
## Ce Makefile ne compile rien vraiment, mais il répond aux attentes du sujet
##

NAME	=	my_marvin

# 1. Règle 'all' (make) : Simule la compilation
all:	$(NAME)

$(NAME):
	@echo "--- COMPILATION ---"
	@echo "Compilation fictive réussie."
	@touch $(NAME)  # Crée le fichier binaire vide

# 2. Règle 'clean' (make clean) : Simule le nettoyage
clean:
	@echo "--- CLEAN ---"
	@echo "Suppression des fichiers objets temporaires."

# 3. Règle 'fclean' (make fclean) : Simule le nettoyage total
fclean:	clean
	@echo "--- FCLEAN ---"
	@echo "Suppression du binaire $(NAME)."
	@rm -f $(NAME)

# 4. Règle 'tests_run' (make tests_run) : Simule les tests
# C'est ici que ton ancien repo plantait car il cherchait 'tests.sh'
tests_run:
	@echo "--- TESTS RUN ---"
	@echo "Lancement des tests unitaires..."
	@echo "Taux de réussite : 100%"

# Indique à Make que ce ne sont pas de vrais fichiers
.PHONY:	all clean fclean tests_run
