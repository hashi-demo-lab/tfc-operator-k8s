import requests

def hit_api(url, times=10000):
    for _ in range(times):
        response = requests.get(url)
        # Optionally, you can print the response or handle it as needed.
        print(response.text)

if __name__ == '__main__':
    api_url = ' http://k8s-apphashi-hashiban-8626110324-1839041870.ap-southeast-2.elb.amazonaws.com'  # Replace this with your actual API URL.
    hit_api(api_url)