FROM bitnami/pytorch:latest
ADD req.txt .
RUN pip install -r req.txt
WORKDIR /usr/src/preds
ADD 7_predict_tru.py .
ADD dogs_cats_model.pth .
CMD ["python","7_predict_tru.py"]