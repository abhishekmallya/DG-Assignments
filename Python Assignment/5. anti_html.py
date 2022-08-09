from bs4 import BeautifulSoup
import urllib.request


def get_text(url):
    request_url = urllib.request.urlopen(url).read()
    bs4soup = BeautifulSoup(request_url)
    print(bs4soup.get_text())


url = input()
get_text(url)
