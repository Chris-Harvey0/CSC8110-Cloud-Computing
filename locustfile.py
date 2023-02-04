from locust import HttpUser, task

class WebAppStressTest(HttpUser):
    @task
    def index(self):
        self.client.get("/")
