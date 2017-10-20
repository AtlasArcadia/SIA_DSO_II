from Crypto.Cipher import AES
from pkcs7 import PKCS7Encoder


def __pad_key(message, base_number=16):
    result = ""
    len_message = len(message)
    div_result = len_message / base_number
    mod_result = len_message % base_number

    pad_number = base_number * div_result
    if(mod_result > 0):
        pad_number = pad_number + base_number

    result = "{:<" + str(pad_number) + "}"
    result = result.format(message)

    return result


def encryption(key, plain_text, mode=AES.MODE_ECB, iv='0000000000000000', need_encode_hex=True):
    """ Encryption
        key  : this is a key use for encryption and decryption
        plain_text : this is a message that you want to encryption.
        mode    : this is a mode of AES encryption default is ECB.
        iv  : this is a initial value default is '0000000000000000'
        need_encode_hex : this is a flag for encode result to hex string.
        #######
        String is sensitive case
        Example:
        result= | Encryption | HelloWorld | This is a secret that i want to tell you...
        #######
    """
    result = ""

    # padding key
    padded_key = __pad_key(key)

    # encryption
    encryption_suite = AES.new(padded_key, AES.MODE_ECB, '0000000000000000')

    # padding Message
    padded_text = PKCS7Encoder().encode(plain_text)

    # create cipher text
    cipher_text = encryption_suite.encrypt(padded_text)

    # check need to encode to Hex
    if(need_encode_hex):
        cipher_text = cipher_text.encode('hex')

    result = cipher_text
    return result


def decryption(key, cipher_text, mode=AES.MODE_ECB, iv='0000000000000000', need_decode_hex=True):
    """ Encryption
        key  : this is a key use for encryption and decryption
        cipher_text : this is a message had encrypted.
        mode    : this is a mode of AES encryption default is ECB.
        iv  : this is a initial value default is '0000000000000000'
        need_decode_hex : this is a flag for decode from hex to string before decryption.
        #######
        String is sensitive case
        Example:
        result= | Decryption | HelloWorld | f5ab952a34fc32a837713b5afa50115a69376
        #######
    """
    result = ""

    # check need to encode to Hex
    if (need_decode_hex):
        cipher_text = cipher_text.decode('hex')

    # padding key
    padded_key = __pad_key(key)

    # decryption
    decryption_suite = AES.new(padded_key, AES.MODE_ECB, '0000000000000000')

    # create cipher text
    padded_pain_text = decryption_suite.decrypt(cipher_text)

    # re-padding Message
    pain_text = PKCS7Encoder().decode(padded_pain_text)

    result = pain_text
    return result


# # For test and debug
# my_key = 'HelloWorld'
# my_text = "mobileNo=0932019543&timestamp=20171002 10:57:00.111&action=CUSTOMER_PROFILE_INIT&key1=value1&key2=value2"
# my_cipher = encryption(my_key, my_text)
# my_pain_text = decryption(my_key, my_cipher)
# print my_cipher
# print my_pain_text
