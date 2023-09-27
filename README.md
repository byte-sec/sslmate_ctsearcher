# sslmate_ctsearcher
Certificate Search By SSLMATE (Like Crt.sh)

---

**Function Name**: `sslmate_ctsearch`

**Description**:
This Bash function simplifies the process of searching for SSL certificates associated with a domain using the SSLMate CT Search API. It takes a domain name as an argument, constructs the API endpoint URL, and sends a GET request with custom headers to retrieve certificate information. The function then processes the response using `jq`, sorts the unique domain names extracted from the certificates, and returns a formatted list of domain names without duplicates, brackets, or quotes.

**Usage**:
```bash
sslmate_ctsearch "example.com"
```

**Dependencies**:
- `curl` for making HTTP requests.
- `jq` for JSON data processing.
- `sort` for sorting domain names.
- `uniq` for making domain names unique.

**Note**:
Ensure that you have the required dependencies installed on your system before using this function.

---
