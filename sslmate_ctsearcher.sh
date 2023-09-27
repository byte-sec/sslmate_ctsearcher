#!/bin/bash

# Function to make a GET request to SSLMate CT Search with custom headers and process the response with jq
function sslmate_ctsearch {
    local domain="$1"
    local api_endpoint="https://api.certspotter.com/v1/issuances?domain=$domain&include_subdomains=true&expand=dns_names"
    
    # Use jq to format the output as a plain list of domain names
    local jq_filter='.[].dns_names[]'

    # Make the API request and process the response with jq, then sort and make it unique
    curl -H "Host: api.certspotter.com" \
         -H "Referer: https://sslmate.com/" \
         "$api_endpoint" | jq -r "$jq_filter" | sort -u
}

# Check if a domain argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

# Usage example:
domain="$1"
sslmate_ctsearch "$domain"
