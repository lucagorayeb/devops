from datetime import date, timedelta
import requests

# payloads = {
#     'q': f'repo:{owner}/{repo} is:issue created:>{date}'
# }

url = "https://hub.docker.com/_/postgres/tags?name=alpine"
nome = "alpine"
def print_results(results, total_results: int):
    for count in range(0, total_results):
        print(f"""Number: {results.get('items')[count]['number']}
    Title: {results.get('items')[count]['title']}
    Last Updated: {results.get('items')[count]['updated_at']} \n""")

try:
    r = requests.get(f"https://hub.docker.com/_/postgres")
    # r.headers['Accept'] = 'application/vnd.github.v3+json'
    # total_items = r.json().get('total_count')
    # print(total_items)
    # print_results(r.json(), total_items)
    print(r.status_code)
except requests.exceptions.RequestException as e:
    print(e)

