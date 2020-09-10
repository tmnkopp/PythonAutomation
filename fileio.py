file = open("data/phonetic_alphabet.txt")
file_text = file.read()
file.close()

new_text = ''

lines = file_text.split('\n')
for line in lines:
    #print(line)        #for debug
    new_text += '' + line + '\n' 
    #print(new_text)    #for debug

print(new_text)        #for debug
#newfile = open("newfile.txt", "w")
#newfile.write(new_text)
#newfile.close()
