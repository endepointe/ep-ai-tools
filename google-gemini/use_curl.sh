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
