#from flask import Flask, request, jsonify
#import tensorflow as tf
#from PIL import Image
#import numpy as np

#app = Flask(__name__)

## تحميل نموذج AI
#model = tf.keras.models.load_model('C:\\Users\\saraa\\Downloads\\mobilenet_model.keras')

#def preprocess_image(image):
    #image = image.resize((128, 128))  # تأكد من أن الحجم متوافق مع النموذج
    #image = np.array(image) / 255.0
    #image = np.expand_dims(image, axis=0)
    #return image

#@app.route('/predict', methods=['POST'])
#def predict():
    #file = request.files['image']
   # image = Image.open(file.stream)
    #processed_image = preprocess_image(image)
    #prediction = model.predict(processed_image)

    # إعداد النتيجة لإرسالها إلى Flutter
    #result = {"prediction": prediction.tolist()}
    #return jsonify(result)

#if __name__ == '__main__':
    #app.run(host="192.168.1.29", port=5000,debug=True)
from flask import Flask, request, jsonify
import tensorflow as tf
from PIL import Image
import numpy as np

app = Flask(__name__)

# تحميل النموذج
model = tf.keras.models.load_model('C:\\Users\\saraa\\Downloads\\mobilenet_model.keras')

# تسميات الفئات
labels = ['NoGas', 'Mixture', 'Perfume', 'Smoke']

# دالة معالجة الصور
def preprocess_image(image):
    try:
        # تغيير حجم الصورة وتطبيعها لتتناسب مع المدخلات المتوقعة من النموذج
        image = image.resize((128, 128))
        image = np.array(image) / 255.0
        image = np.expand_dims(image, axis=0)
        print(f"Image processed successfully with shape: {image.shape}")
        return image
    except Exception as e:
        print(f"Error during image preprocessing: {e}")
        raise

# نقطة النهاية للتنبؤ
@app.route('/predict', methods=['POST'])
def predict():
    if 'image' not in request.files:
        print("No image found in the request.")
        return jsonify({'error': 'No image provided'}), 400

    try:
        file = request.files['image']
        print(f"Image received: {file.filename}")

        # فتح الصورة ومعالجتها
        image = Image.open(file.stream).convert('RGB')
        processed_image = preprocess_image(image)
        print(f"Processed image shape: {processed_image.shape}")

        # التنبؤ باستخدام النموذج
        prediction = model.predict(processed_image)
        print(f"Prediction values: {prediction}")

        # استخراج التسمية المتوقعة
        predicted_label = labels[np.argmax(prediction)]
        print(f"Predicted label: {predicted_label}")

        # الرد المخصص بناءً على التسمية المتوقعة
        if predicted_label == 'Perfume':
            result = {"prediction": "Gas Leak"}
        elif predicted_label == 'Mixture':
            result = {"prediction": "Gas,Smoke Leak"}
        elif predicted_label == 'Smoke':
            result = {"prediction": "Smoke"}
        else:
            # تجاهل إذا كانت النتيجة NoGas
            return '', 204  # No Content response, no data returned

        return jsonify(result)

    except Exception as e:
        print(f"Error during prediction: {e}")
        return jsonify({'error': 'Error during prediction'}), 500


@app.route('/hello', methods=['GET'])
def hello():
    return "Hello World"

# تشغيل التطبيق
if __name__ == '__main__':
   app.run(host="172.20.10.2", port=5000, debug=True)

