######################################################
#  
# Inspired to https://towardsdatascience.com/gentle-start-to-natural-language-processing-using-python-6e46c07addf3
#
######################################################
import nltk
nltk.download('stopwords', quiet=True)
nltk.download('punkt', quiet=True)
import string
import urllib.request
from bs4 import BeautifulSoup
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize


def get_web_page(url):
    page = urllib.request.urlopen(url)
    html_code = page.read()
    return html_code

def get_text_from_html(html_code):
    return BeautifulSoup(html_code,'html.parser').get_text(strip = True)

def tokenize_text(text, lang):
    tokens = word_tokenize(text)
    tokens = [w.lower() for w in tokens]
    table = str.maketrans('', '', string.punctuation)
    stripped = [w.translate(table) for w in tokens]
    words = [word for word in stripped if word.isalpha()]
    stop_words = stopwords.words(lang)
    words = [w for w in words if not w in stop_words]
    return words

def word_count(tokens):
    freq = nltk.FreqDist(tokens)
    counts = [(k, v) for k, v in sorted(freq.items(), key = lambda item: item[1], reverse=True)]
    return counts[0:20]

if __name__=='__main__':
    print("Enter the URL of a Web page...")
    url= input()
    print("Enter the language of the page (in english)...")
    lang = input().lower()
    html_code = get_web_page(url)
    text = get_text_from_html(html_code)
    tokens = tokenize_text(text, lang)
    counts = word_count(tokens)
    for c in counts:
        print("{}: {}".format(c[0], c[1]))
    