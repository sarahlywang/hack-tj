#!/usr/bin/env python

import os

PARTICIPANTS_DIR = 'participants'

participant_files = os.listdir(PARTICIPANTS_DIR)

for file_name in participant_files:
    file = open(PARTICIPANTS_DIR + '/' + file_name, 'r')
    lines = file.readlines()
    file.close()

    lines_with_spaces = []
    for line in lines:
        lines_with_spaces.append('   ' + line)

    file = open(PARTICIPANTS_DIR + '/' + file_name, 'w')
    file.writelines(lines_with_spaces)
    file.close()
