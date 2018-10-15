from sys import argv

import bottle
import urllib.request, json
from bottle import *
bottle.debug(True)


with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("index", data=data)

@route("/company/<company>")
def index(company):
        return template('company', data=data, c=company)

@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root='./static')

@error(404)
def villa(error):
    return """<h2> Þessi síða finnst ekki </h2>
    <a href=/> Smelltu hér til að fara á forsíðu </a>"""


bottle.run(host='0.0.0.0', port=argv[1])
