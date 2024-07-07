# import nltk 
# nltk.download('punkt')

from nltk.tokenize import word_tokenize, sent_tokenize

print("Entrez 1 pour fichier par défaut, ou 2 pour choisir votre fichier :")
choice = int(input())
name_file = ""
if(choice == 1):
	name_file = "phrase.txt"
if(choice == 2):
	print("Entrer le nom de votre fichier")
	name_file = input()


text = open (name_file , "r") 
text = text.read()

words = word_tokenize(text)
sentences = sent_tokenize(text)

# print("Listes des mots \n", words)
# print("Listes des phrases \n", sentences)
print("Nb phrases : ", len(sentences))


# Pour le tome 1 des miserables , mon parseur trouve 8215 phrases(avec les separateurs [!?.]) , nltk en trouves 7576