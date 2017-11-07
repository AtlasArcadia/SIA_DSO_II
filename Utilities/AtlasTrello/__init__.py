from urllib import quote_plus
from trello import *
from .AtlasBoardEx import AtlasBoards
from .AtlasCardsEx import AtlasCards

class AtlasTrello(object):
    def __init__(self, apikey, token=None):
        self._apikey = apikey
        self._token = token
        self.actions = Actions(apikey, token)
        self.boards = AtlasBoards(apikey, token)
        self.cards = AtlasCards(apikey, token)
        self.checklists = Checklists(apikey, token)
        self.lists = Lists(apikey, token)
        self.members = Members(apikey, token)
        self.notifications = Notifications(apikey, token)
        self.organizations = Organizations(apikey, token)
        self.tokens = Tokens(apikey, token)
        self.types = Types(apikey, token)

    def set_token(self, token):
        self._token = token
        self.actions._token = token
        self.boards._token = token
        self.cards._token = token
        self.checklists._token = token
        self.lists._token = token
        self.members._token = token
        self.notifications._token = token
        self.organizations._token = token
        self.tokens._token = token
        self.types._token = token

    def get_token_url(self, app_name, expires='30days', write_access=True):
        return 'https://trello.com/1/authorize?key=%s&name=%s&expiration=%s&response_type=token&scope=%s' % (
        self._apikey, quote_plus(app_name), expires, 'read,write' if write_access else 'read')