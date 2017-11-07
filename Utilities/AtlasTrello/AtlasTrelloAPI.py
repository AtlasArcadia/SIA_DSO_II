# coding=utf-8
import sys
sys.path.append("..")
from openpyxl import load_workbook
from AtlasTrello import AtlasTrello

# เปลี่ยน col บางอย่างเช่น เลื่อนทุก col จาก E ไป 1 ตำแหน่งเพื่อเพิ่ม expect result เข้ามา


# define trello information
# TRELLO_APP_KEY เก็บค่าประจำเครื่องสามารถหาได้จาก url: https://developers.trello.com/get-started/start-building 
# แล้วคลิกปุ่ม Get your Application Key
#ENG


TRELLO_APP_KEY = "51dad568b7a8274b9cf801eb09c906cc"
# TRELLO_MEMBER_TOKEN = "4b9e447aac6e8708c470d43509a348bbda6c6e0fe931179b245360ad2a5181a2"
#TRELLO_MEMBER_TOKEN = "600e0263b01a524670ae25bacc45415ea9b43d0c171c4d246743e36b49e68942"
#ENG
# TRELLO_MEMBER_TOKEN คือ Token ของผู้ใช้งานซึ่งสามารถเอามาได้จาก URL: https://developers.trello.com/get-started/start-building 
# แล้วคลิกปุ่ม Get your Application Key
# TRELLO_MEMBER_TOKEN จะอยู่ในส่วนของ OAuth

TRELLO_MEMBER_TOKEN = "ffabdb6913a3a648f7a1c91950dd008fd594c9169daaba8d568f055fb472a953"
MYAIS_BROAD_ID = "WE3gjCka"
TRELLO_LIST = "TiNn"
START_ROWS_TESTCASE = 2
END_ROWS_TESTCASE = 132



class TrelloAPI_EX(AtlasTrello):

    @staticmethod
    def init_xlsx(filename, tab):
        workbook = load_workbook(filename=filename, read_only=True)
        worksheet = workbook[tab]
        return worksheet

    @staticmethod
    def add_card_of_testcase(trelloApi, list_name, worksheet, tags=None, owners=None):
    #def add_card_of_testcase(trelloApi, list_name, worksheet):
        list_id = None
        trellolist = trelloApi.boards.get_list(MYAIS_BROAD_ID)

        for index in range(0, len(trellolist)):
            list = trellolist[index]['name']
            if list == list_name:
                list_id = trellolist[index]['id']
                break
        if list_id is None:
            print "broad dose not have list name " + list_name
            return
        trello_card = trelloApi.cards
        card_index = 0
        for index in range(START_ROWS_TESTCASE, END_ROWS_TESTCASE):
            #Col get from excel D is point A , B is Name
            card_name = "("+ str(worksheet['F' + str(index)].value)+") " + worksheet['A' + str(index)].value + " " + worksheet['B' + str(index)].value
            # Col get from excel C is Description
            card_desc = worksheet['C' + str(index)].value +  worksheet['D' + str(index)].value + worksheet['E' + str(index)].value
            trello_card.new(card_name, list_id, card_desc)
            cards = trelloApi.lists.get_card(list_id)
            print cards
            card = cards[card_index]
            card_index += 1
            # print str(card_index) + " all card in round => " + str(card)
            owners = worksheet['G' + str(index)].value
            temp_tags = worksheet['H' + str(index)].value
            tags = temp_tags.split(',')
            labels = trelloApi.boards.get_label(MYAIS_BROAD_ID)
            members = trelloApi.boards.get_member(MYAIS_BROAD_ID)
            listowner = owners.split(",")

            if owners is not None:
                for owner in listowner :
                    for member in members:
                        if owner == member['fullName']:
                            trello_card.new_member(card['id'], member['id'])

            if tags is not None:
                for tag in tags:
                    for label in labels:
                        if tag == label['name']:
                            trello_card.new_label(card['id'], label['id'])

        """cards = trelloApi.lists.get_card(list_id)
        labels = trelloApi.boards.get_label(MYAIS_BROAD_ID)
        members = trelloApi.boards.get_member(MYAIS_BROAD_ID)
        if tags is not None:
            for tag in tags:
                for label in labels:
                    if tag == label['name']:
                        for card in cards:
                            trello_card.new_label(card['id'], label['id'])
        if owners is not None:
            for owner in owners:
                for member in members:
                    if owner == member['fullName']:
                        for card in cards:
                            trello_card.new_member(card['id'], member['id'])"""
    # add tag in T9 with manual Mon 31/01/2017
    # @staticmethod
    # def create_tag_in_card(worksheet):
    #     config_sheet = TrelloAPI_EX.init_xlsx('T9_Test_MyAIS_APP_3PO_TH.xlsx', 'Dictionary')
    #     dict_nType = {}
    #     dict_lang = {}
    #     dict_flow = {}
    #     dict_env = {}
    #     for index in range(3, 20):
    #         key = str(config_sheet['A' + str(index)].value)
    #         if key is None:
    #             break
    #         dict_nType[key] = config_sheet['B' + str(index)].value
    #     for index in range(3, 20):
    #         key = str(config_sheet['D' + str(index)].value)
    #         if key is None:
    #             break
    #         dict_lang[key] = config_sheet['E' + str(index)].value
    #     for index in range(3, 20):
    #         key = str(config_sheet['G' + str(index)].value)
    #         if key is None:
    #             break
    #         dict_flow[key] = config_sheet['H' + str(index)].value
    #     for index in range(3, 20):
    #         key = str(config_sheet['J' + str(index)].value)
    #         if key is None:
    #             break
    #         dict_env[key] = config_sheet['K' + str(index)].value
    #     rawID = worksheet['A' + str(index)].value
    #     ID_All = rawID.split('_')
    #     ID_feature = ID_All[0]
    #     ID_nType = ID_All[1]
    #     ID_lang = ID_All[2]
    #     ID_flow = ID_All[3]
    #     ID_number = ID_All[4]
    #     ID_env = ID_All[5]
    #     tags = [dict_nType[ID_nType], dict_lang[ID_lang], dict_flow[ID_flow], dict_env[ID_env]]
    #     return tags

if __name__ == '__main__':

    testcase_sheet = TrelloAPI_EX.init_xlsx('tin9.xlsx', 'Sheet1')
    trelloApi = AtlasTrello(TRELLO_APP_KEY, TRELLO_MEMBER_TOKEN)
    # tag = TrelloAPI_EX.create_tag_in_card(testcase_sheet)
    #TrelloAPI_EX.add_card_of_testcase(trelloApi, TRELLO_LIST, testcase_sheet)
    TrelloAPI_EX.add_card_of_testcase(trelloApi, TRELLO_LIST, testcase_sheet, None, None)




