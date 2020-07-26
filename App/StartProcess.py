import os


class Simple:
    def startAppiumServer(self):
        os.startfile(os.getcwd()+"\\App\\StartAppiumServer.bat")

    def stopAppiumServer(self):
        os.system("Taskkill /F /IM node.exe")

s = Simple()



