import cv2
import numpy as np
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis
from skimage.feature.texture import greycomatrix
import matplotlib.pyplot as plt

#Aplicando o filtro 2D para as imagens
def filtro_2D(image):
    kernel = np.ones((6,6),np.float32)/25
    filter2D = cv2.filter2D(image,-1,kernel)
    print(filter2D)    
    dados_imagem(filter2D)
    mostrar_imagem(filter2D)
    return filter2D
    
def dados_imagem(image):
    print()
    print("Imagem")
    print("Altura {} pixels".format(image.shape[0]))
    print("Largura {} pixels".format(image.shape[1]))
    print("Canais {} pixels".format(image.shape[2]))
    print()
    
