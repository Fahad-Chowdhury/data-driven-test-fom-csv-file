import csv

def read_data_fom_csv_file(filename):
    data = []
    with open(filename, 'rt') as csvfile:
        csv_reader = csv.reader(csvfile)
        for row in csv_reader:
            data.append(row)
    return data
