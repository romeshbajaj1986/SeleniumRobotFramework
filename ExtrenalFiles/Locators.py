import json
import jsonpath
#Function to read locator from JsonFile
def readlocatorfromJsonFile(locatorname):
    #loading Json file
    f = open('C:/Users/sony/PycharmProjects/RobortFrameWorkAutomation/JsonFiles/Elements.json')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locatorname)
    return  value[0]