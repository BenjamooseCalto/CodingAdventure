class Conversion:
    METERS = ['m', 'meter', 'meters']
    KILOMETERS = ['km', 'kms', 'kilometers']
    CELSIUS = ['c', 'celsius']
    FAHRENHEIT = ['f', 'fahrenheit']
    KELVIN = ['k', 'kelvin']

    def __init__(self, message):
        self.message = message.lower()
    
    def find_type(self):
        self.words = self.message.split()
        if self.words[0] == 'convert':
            self.inputUnit = self.words[1][-1]
            self.outputUnit = self.words[-1][-1]
            if self.inputUnit in self.FAHRENHEIT:
                if self.outputUnit == 'c':
                    self.completion = self.convert_temp('f', 'c')
                elif self.outputUnit == 'k':
                    self.completion = self.convert_temp('f', 'k')
            elif self.inputUnit in self.CELSIUS:
                if self.outputUnit == 'f':
                    self.completion = self.convert_temp('c', 'f')
                elif self.outputUnit == 'k':
                    self.completion = self.convert_temp('c', 'k')
            elif self.inputUnit in self.KELVIN:
                if self.outputUnit == 'f':
                    self.completion = self.convert_temp('k', 'f')
                elif self.outputUnit == 'c':
                    self.completion = self.convert_temp('k', 'c')
        print(f'{self.inputNumber}{self.inputUnit} in {self.outputUnit} is {self.completion}')
        return self.completion
    
    def convert_temp(self, input, output):
        self.inputNumber = int(self.words[1][:-1])
        if output == 'c':
            if input == 'f':
                self.convert = int((self.inputNumber - 32) * 5/9)
            elif input == 'k':
                self.convert = int(self.inputNumber - 273.15)
            else:
                print('conversion error @ line 27 in convert_temp')
        elif output == 'k':
            if input == 'f':
                self.convert = int((self.inputNumber - 32) * 5/9 + 273.15)
            elif input == 'c':
                self.convert = int(self.inputNumber + 273.15)
        elif output == 'f':
            if input == 'c':
                self.convert = int((self.inputNumber * 9/5) + 32)
            elif input == 'k':
                self.convert = int((self.inputNumber - 273.15) * 9/5 + 32)
        return self.convert

message = 'Convert 39K to F'
conv = Conversion(message)
conv.find_type()
