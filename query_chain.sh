base_url='https://glacier-api.avax.network/v1/networks/mainnet/blockchains/p-chain/blocks/'
output_file='response.json'

for ((block_number=31962743; block_number>=31957743; block_number--)); do
    url="${base_url}${block_number}"
    response=$(curl -s -X GET "${url}" -H 'accept: application/json')
    
    if [[ $(echo "${response}" | jq -r '.error') == 'null' ]]; then
        echo "${response}" >> "${output_file}"
    else
        echo "Failed to fetch block ${block_number}"
    fi
done