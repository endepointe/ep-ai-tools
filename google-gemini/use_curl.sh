#echo $gapik
query="$*"
echo $query
question=$(printf %q "$query")

curl "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$gapik" \
-H 'Content-Type: application/json' \
-X POST \
-d "{
  \"contents\": [{
    \"parts\":[{\"text\": \"$question\"}]
    }]
   }"

echo "now do something useful. remember... you must load the geminiapikey into
the gapik env variable before using this script."
