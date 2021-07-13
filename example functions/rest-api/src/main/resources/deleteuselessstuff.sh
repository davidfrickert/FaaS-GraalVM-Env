cat reflect-config2.json | jq -c "[ .[] | select(.name | test(\"$JQ_FILTER\"; \"i\") | not) ]" | jq . > reflect-config2.json
