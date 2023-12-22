import pandas as pd
import sys

class DataProcessor:
    def __init__(self, file_path):
        self.file_path = file_path
        self.data = None
    
    def load_data(self):
        self.data = pd.read_csv(self.file_path)

    def print_data(self):
        print(self.data.tail())

    def generateCSV(self, filename):
        self.data.to_csv(filename)
    


if __name__ == '__main__':
    print('argv: ', sys.argv)
    pathfile = sys.argv[1]
    print('path file: ', pathfile)

    data = DataProcessor(pathfile)
    print(data)

    data.load_data()

    # print(data.data)

    data.print_data()

    data.generateCSV('test.csv')
