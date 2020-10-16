import sys

def print_info(input_fname, index):
    print('Running with input file ' + input_fname + ' and index ' + str(index))

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print('python sample_script.py input_fname index')
        exit(1)

    # Get command line arguments
    input_fname = sys.argv[1] # Input file name
    index = int(sys.argv[2])  # Input index

    # Call function to print info
    print_info(input_fname, index)
