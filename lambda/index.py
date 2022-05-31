# import requests
# import json

# def handler(event,context):
#     url = "https://jsonplaceholder.typicode.com/posts"

#     response = requests.get(url)
#     top_ten_posts = response.json()[:10]

#     return {
#         "statusCode": response.status_code,
#         "body": json.dumps(top_ten_posts)
#     }


import json

def handler(event, context):
    return {
        "statusCode": 200,
        "body": json.dumps({"foo": "bar"})
    }
