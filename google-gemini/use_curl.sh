query="$*"
# could use jq but that would need to be installed

question=$(printf %q "$query")

curl
"https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$GAPIK" \
-H 'Content-Type: application/json' \
-X POST \
-d "{
  \"contents\": [{
    \"parts\":[{\"text\": \"$question\"}]
    }]
   }"

echo "Remember to set GAPIK (use decrypt_key.sh if you have it.)"
