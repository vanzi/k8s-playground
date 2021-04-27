import falcon


class TheAnswer:

    def on_get(self, req, resp):
        resp.status = falcon.HTTP_200
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = 'the answer is 42\n'


application = falcon.App()
application.add_route('/', TheAnswer())
