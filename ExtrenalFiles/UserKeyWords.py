import os
#if we need to perform any operation on os like create folder delete folder we need to import module os
def createfolder():
    os.mkdir('D:\\Python\\Robot')

def createfolderbytakingForderName(folderName):
    os.mkdir('D:\\Python\\Robot\\'+folderName)

def concatenateestring(string1,strin2):
    str3=string1+" "+strin2
    return str3
