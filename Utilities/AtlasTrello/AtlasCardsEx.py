from trello import Cards
import json
import requests


class AtlasCards(Cards):

    def new_label(self, card_id, value):
        resp = requests.post("https://trello.com/1/cards/%s/idLabels" % (card_id), params=dict(key=self._apikey, token=self._token), data=dict(value=value))
        resp.raise_for_status()
        return json.loads(resp.content)
