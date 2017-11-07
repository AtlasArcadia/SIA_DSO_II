from trello import Boards
import json
import requests


class AtlasBoards(Boards):
    __module__ = 'AtlasTrello'

    def get_label(self, board_id, fields=None, limit=None):
        resp = requests.get("https://trello.com/1/boards/%s/labels" % (board_id), params=dict(key=self._apikey, token=self._token, fields=fields, limit=None), data=None)
        resp.raise_for_status()
        return json.loads(resp.content)
