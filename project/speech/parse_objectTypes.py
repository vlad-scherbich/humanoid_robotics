import sys

def parseObjectTypes(objectFile):
    output = open('parsed_objectTypes.csv', 'w')

    with open(objectFile, 'r') as objectTypes:
        for line in objectTypes:
            indices = find(line, '\'')
            extracted = line[indices[0]+1:indices[1]]
            output.write('%s\n' % (extracted))

    output.close()

def find(s, ch):
    return [i for i, ltr in enumerate(s) if ltr == ch]

def usage():
    print('USAGE: python parse_objectTypes [objectTypeFileName]')

if __name__ == '__main__':
    if len(sys.argv) != 2:
        usage()
        sys.exit(1)

    parseObjectTypes(sys.argv[1])
