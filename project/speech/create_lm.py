import sys

def createCorpus(parsedFile):
    output = open('corpus.txt', 'w')

    command = 'bring me a '
    with open(parsedFile, 'r') as objectTypes:
        for ob in objectTypes:
            line = command + ob
            output.write('%s' % (line))

    output.close()

def usage():
    print('USAGE: python create_lm.py [parsedObjectTypesFileName]')

if __name__ == '__main__':
    if len(sys.argv) != 2:
        usage()
        sys.exit(1)

    createCorpus(sys.argv[1])
