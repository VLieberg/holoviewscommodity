FROM python:3.8-buster

COPY Holoviews.ipynb Holoviews.ipynb
COPY requirements.txt requirements.txt
COPY soybean_PNG23.png soybean_PNG23.png
COPY raw_data /raw_data

# ENV BOKEH_ALLOW_WS_ORIGIN commoditydash-gpi5doqzgq-uc.a.run.ap

RUN pip install -U pip
RUN pip install -r requirements.txt

CMD panel serve Holoviews.ipynb  --address 0.0.0.0  --port 8080 --allow-websocket-origin="*"
