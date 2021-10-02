import json, time
from enum import Enum
class LogLevel(Enum):
     Info = 10
     Debug = 90
     Warn = 30
     Exception = 50

class Logger:
    __log = []
    Verbose = False
    def __init__(self, Level): 
        self.logLevel = Level 
        self.__log = []
        self.time_init = time.time()
        self.time_last = time.time()
        self.Verbose = False
    def __get_log_item(self, loglevel, src, msg):
        d = {}
        d['level'] = str(LogLevel(loglevel))
        d['severity'] = loglevel.value
        d['elapsed'] = self.__log_time_elapse()
        d['runtime'] = self.__log_time()
        d['source'] = src
        d['message'] = msg
        return d
    def __log_time_elapse(self):
        return str(round(time.time()-self.time_init, 4))
    def __log_time(self):
        t = str(round(time.time()-self.time_last, 4))
        self.time_last = time.time()
        return t 
    def LogInfo(self, source, message): 
        self.__log.append(self.__get_log_item(LogLevel.Info, source, message))  
    def Debug(self, source, message):
        d = self.__get_log_item(LogLevel.Debug, source, message)
        self.__log.append(d) 
        if self.Verbose: 
            print(f" ({d['runtime']}) {d['source']}: {d['message']} ")
    def LogWarn(self, source, message):
        self.__log.append(self.__get_log_item(LogLevel.Warn, source, message)) 
    def LogException(self, source, message):
        self.__log.append(self.__get_log_item(LogLevel.Exception, source, message)) 
    def get_log(self):
        logs = [ l for l in self.__log if l['severity'] >= self.logLevel.value ]
        return logs  
    def show(self): 
        for d in self.get_log():
            print(f" {LogLevel(d['severity'])}: {d['source']} {d['message']} ({d['runtime']}) " )
    def to_json(self, path):  
        with open(f'{path}', "w") as f:
            json.dump(self.get_log(), f, indent=4 )
 