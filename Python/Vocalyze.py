import numpy as np, librosa, sys

def get_raw_data(filename):
    return librosa.load(filename, sr=None)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Please provide one file name.")
    else:
        audio_data, sr = get_raw_data(sys.argv[1])