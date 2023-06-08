DATE="20230605"
for FILE in /mnt/ris/rrc??/2023.06/updates.${DATE}.* ; do
   echo "## $FILE " >> unk.updates.$DATE.txt
   bgpdump -v $FILE | perl -000 -nle'm/UNKNOWN_ATTR\(224\,\s28\,./ && print $_' >> unk.updates.$DATE.txt
done
