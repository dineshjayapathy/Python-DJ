import gpxpy
import csv
import os
import re

# create csv file called merged.csv to working directory and give column names x, y & t
with open(r'mass.csv', 'a') as f:
    writer = csv.writer(f, quoting=csv.QUOTE_NONE, escapechar=' ', lineterminator='\n')
    writer.writerow('yxt')

# create a folder for your files manually
for file in os.listdir('C:\DJ\Data gallery\Training\mass'):
    filePath = "C:\DJ\Data gallery\Training\mass" +"\\"+ file
    # s=r'C:\DJ\Data gallery\Training\mass'
    # filePath=os.path.join(s, i)
    print(filePath)
    gpx_file = open(filePath, 'r')
    gpx = gpxpy.parse(gpx_file)
    count = 0

    # iterate through rows and append each gpx row to merged csv
    for track in gpx.tracks:
        for segment in track.segments:
            for point in segment.points:
                fields = ['{0},{1},{2}'.format(point.latitude, point.longitude, point.time)]
                # Here double whitespace is removed so QGIS accepts the time format
                re.sub(' +', ' ', fields[0])
                # Graphhopper creates quite a lot of GPX points and for this purpose every second is enough.
                count += 1
                if count % 2 == 0:
                    with open(r'C:\DJ\Data gallery\Training\merged.csv', 'a') as f:
                        writer = csv.writer(f, quoting=csv.QUOTE_NONE, escapechar=' ', lineterminator='\n')
                        writer.writerow(fields)