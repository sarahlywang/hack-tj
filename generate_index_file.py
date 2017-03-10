#!/usr/bin/env python

import os

participant_files = os.listdir('participants')

with open('index.xml', 'w') as index_file:
    index_file.write('<list>\n')
    for file in participant_files:
        index_file.write('  <entry fileName="participants/' + file + '" />\n')
    index_file.write('</list>')
