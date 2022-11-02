# Recognition of Hand-Sketched Digital Logic Gates

# WHAT IS THE CIRCUIT SKETCH RECOGNITION?

### Circuit sketch recognition can be defined as handwriting recognition
### Handwriting recognition is the ability of a computer to receive and interpret intelligible handwritten input from sources such as paper documents, photographs, touch-screens and other devices.
### But also we can define it as shape analysis or shape recognition by using image processing applications.

## METHODS FOR SHAPE ANALYSIS

### Shape Analysis : Step that consists on identifying an object using only its shape
### Shape analysis procedures are based on the use of shape descriptors
### There exists several shape descriptors:
            *Including boxes
            *Moment descriptors
            *Guzman polygons
            *Freeman chain coding
            *Fourier descriptors

### A good shape descriptor should have the following properties:
#### -good fidelity to the initial shape
#### -good discrimination between different shapes
#### -good behavior with shape recognition operations :
         - invariance with translation
         - invariance with rotation
         - invariance with scaling

![image](https://user-images.githubusercontent.com/103723115/199402474-b9ec5108-81f3-4cf8-93f2-5dc8d67aa5f0.png)

## Steps of Circuit Sketch Recognition
### 1) Image Acquisition: We can take the photo or scan it.

![image](https://user-images.githubusercontent.com/103723115/199402115-d0354341-2b2d-4192-b7cd-b7f689674680.png)

### 2) Preprocessing

![image](https://user-images.githubusercontent.com/103723115/199402403-f11ce9f5-7c2a-4bad-b034-50f97ec2e973.png)

![image](https://user-images.githubusercontent.com/103723115/199402354-0a6fc3e7-7fe7-4c71-a788-3996c8ca5680.png)

### 3)Feature Extraction:Fourier Descriptors

#### -Tool which allows to describe the external shape of an object, that is to its contour

#### -Fourier Descriptors are boundary (edge) based descriptors

#### -These descriptors represent the shape in frequency domain.

#### -Low frequency components contain information about the general features of the shape, and the higher frequency components contain finer details of the shape. 

#### -Though different people may have different drawing habits, the subset of the low frequency coefficient tend to be similar for the same electronic component. 

#### -So although the number of coefficients generated from the Fourier transform is usually large, the dimensions of the Fourier descriptors used for shape recognition can be greatly reduced.

![image](https://user-images.githubusercontent.com/103723115/199402860-42eb2fa8-af6f-4c6c-bd4d-e1eba3347762.png)

### 4)Classification: Neural network (nprtool)

#### -MATLAB neural network is a powerful tool for pattern recognition and classification.

![image](https://user-images.githubusercontent.com/103723115/199403254-69bad447-7a35-4455-973f-51dd7bdfd7f0.png)

![image](https://user-images.githubusercontent.com/103723115/199403480-81911156-13b4-4fd4-a7f1-c23f0411f17a.png)

![image](https://user-images.githubusercontent.com/103723115/199403645-3010527f-8046-40c0-8157-77e545ef1b1a.png)

![image](https://user-images.githubusercontent.com/103723115/199403768-e91c78f7-6be2-45dd-947f-3e3b6c8ef9ef.png)

![image](https://user-images.githubusercontent.com/103723115/199403914-1ec0cdfc-7b0c-4e9f-a2a2-0a3453e23355.png)

#### - According to confusion matrix we get 90 % accuracy rate. This is meaning that our network finds 90 percent of the objects truly and 10 percent of them are known as another component.
#### - In our testing image we had 6 AND gate, 6 OR gate, and 8 inverter.
#### - Our network just confused 2 of the AND gates to the OR gates. And it knows all other components truly.

### REFERENCES:

#### -http://ganymed.imib.rwth-aachen.de/deserno/ps-pdf/vorlesungen/Master-BE-2010-04-Texture-Shape.pdf
#### -http://www.creatis.insa-lyon.fr/~bernard/files/courses/DIP-5_EN_ImageAnalysis_part3.pdf
#### -http://www.math.uci.edu/icamp/summer/research_11/bhonsle/Fourier_descriptor.pdf
#### -https://homepages.cae.wisc.edu/~ece533/project/f06/karrels_ppt.pdf
#### -https://stacks.stanford.edu/file/druid:bf950qp8995/Liu_Xiao.pdf
#### -Digital Image Processing using MATLAB R.C. Gonzalez,R.E. Woods, S.L. Eddins
#### -http://www.tsi.telecom-paristech.fr/pages/enseignement/ressources/beti/descript_fourier/Part1.html















