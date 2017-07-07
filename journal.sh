write_journal()
{
  # read date from user input
  echo "insert date mm-dd (2017 is in by default): "
  read mydate
  mydate="2017-$mydate"

  # create file if not exist
  local file="/home/erpreciso/Dropbox/journal/$mydate-journal.txt"
  if [ ! -f "$file" ] ; then
    touch "$file"
  fi

  # ask entry content
  echo "insert entry content. one line only. if you want more than one line, edit the output file"
  read content

  # write to file
  echo "---" >> "$file"
  echo 'title: "No Title"' >> "$file"
  echo "date: $mydate" >> "$file"
  echo "tag: journal" >> "$file"
  echo "" >> "$file"
  echo "---" >> "$file"
  echo "$content" >> "$file"
}

# execute function
write_journal


