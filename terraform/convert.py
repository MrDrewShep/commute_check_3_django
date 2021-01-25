with open("rds_import.txt", "r") as f:
    read = f.readlines()
    lines = [i.strip('\n') for i in read]


with open("rds_import_converted.txt", "w") as f:
    for line in lines:
        items = line.split(":")
        key = items[0].replace('"', "")
        value = items[1]
        f.write(key)
        f.write(" =")
        f.write(value)
        f.write('\n')