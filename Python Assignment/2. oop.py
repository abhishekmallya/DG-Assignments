from abc import ABC, abstractclassmethod, abstractmethod

class Person(ABC):
    @abstractmethod
    def get_gender(self):
        pass

class Male(Person):
    def get_gender(self):
        print('Male')

class Female(Person):
    def get_gender(self):
        print('Female')

obj = Person()
