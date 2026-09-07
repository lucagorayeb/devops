import argparse
from datetime import date, timedelta
import requests

parser = argparse.ArgumentParser(prog='gh-stale-issues')
parser.add_argument('--repo', type=str, help='Repository Owner/Repository name')
parser.add_argument('--days', type=int, help='Number of Days')
args = parser.parse_args()

data_array = args.repo.split('/')
owner = data_array[0]
repo = data_array[1]

date = date.today() - timedelta(days=args.days)

payloads = {
    'q': f'repo:{owner}/{repo} is:issue created:>{date}'
}

def print_results(results, total_results: int):
    for count in range(0, total_results):
        print(f"""Number: {results.get('items')[count]['number']}
    Title: {results.get('items')[count]['title']}
    Last Updated: {results.get('items')[count]['updated_at']} \n""")


try:
    r = requests.get(f"""https://api.github.com/search/issues""", params=payloads)
    r.headers['Accept'] = 'application/vnd.github.v3+json'
    total_items = r.json().get('total_count')
    print(total_items)
    print_results(r.json(), total_items)
except requests.exceptions.RequestException as e:
    print(e)
