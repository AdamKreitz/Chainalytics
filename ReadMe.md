## Glacier API - Accessing Block Ranges on EVM Chains

This repository provides an example implementation for accessing block ranges on EVM (Ethereum Virtual Machine) chains using the Glacier API. The Glacier API allows you to interact with various blockchain networks and retrieve specific block information.

### Prerequisites

- Python 3.x
- requests library (pip install requests)
- jq command-line JSON processor (Installation instructions can be found here)

### Usage

Clone the repository:

git clone https://github.com/your-username/glacier-api-example.git

Navigate to the project directory:

cd glacier-api-example

Open the query_blocks.sh script file in a text editor and update the following variables:

base_url: The base URL of the Glacier API for the target network and blockchain.
output_file: The name of the output file where the JSON responses will be stored.

Make the script executable:

chmod +x query_blocks.sh

Execute the script to query the block range and store the responses:

./query_blocks.sh

This will query the last 5000 (or depending on the range you specify) blocks individually and store the responses in a single JSON file (response.json).

Analyze the JSON data in the response.json file according to your requirements.

### License

This project is licensed under the MIT License.

