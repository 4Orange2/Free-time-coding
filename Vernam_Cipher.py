# This is an encryption and decryption device
def alphabet_to_number(key):
    index = 0
    while index < (len(key)):
        alpha_to_num = ord(str(key[index])) - 65
        char_remove = key[index]
        key.remove(char_remove)
        key.insert(index, alpha_to_num)
        index += 1
    return key

def encrypt(og_message, shifter):
    index = 0
    shifter = shifter * len(og_message)
    while index < len(og_message):
        alpha_to_num = abs(ord(str(og_message[index])) + shifter[index])
        if og_message[index].isalpha() and alpha_to_num > 90:
            diff = abs(alpha_to_num - 91)
            alpha_to_num = 65 + diff
        num_to_alpha = chr(alpha_to_num)
        og_message.pop(index)
        og_message.insert(index, num_to_alpha)
        index += 1        
    encrypted_message = og_message[0:index]
    return encrypted_message

def decrypt(encrypted, shifter):
    index = 0
    shifter = shifter * len(encrypted)
    while index < len(encrypted):
        alpha_to_num = abs(ord(str(encrypted[index])) - shifter[index])
        if encrypted[index].isalpha() and alpha_to_num < 65:
            diff = abs(ord(str(encrypted[index])) - 65)
            alpha_to_num = 91 - abs(shifter[index] - diff)
        num_to_alpha = chr(alpha_to_num)
        encrypted.pop(index)
        encrypted.insert(index, num_to_alpha)
        index += 1
    decrypted_message = encrypted[0:index]
    return decrypted_message

user_key = list(input("Code word: ").upper())

shifter = alphabet_to_number(user_key)

user_status = str(input("Decrypt or Encrypt? ").upper())
if user_status == "ENCRYPT":
    user_og_message = list(input("Message: ").upper())
    print("".join(encrypt(user_og_message, shifter)))
elif user_status == "DECRYPT":
    user_og_message = list(input("Message: ").upper())
    print("".join(decrypt(user_og_message, shifter)))
else:
    "Error: Make sure that you're putting in either 'encrypt' or 'decrypt'"