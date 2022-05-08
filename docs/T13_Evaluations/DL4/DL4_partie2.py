import imageio

im = imageio.imread("cocotiers.png")

  
def lsb(n: int):
    '''
    Renvoie le bit de poids faible d'un entier n.
    '''
    return bin(n)[-1]
    
message_binaire = ''

for ligne in range(im.shape[0]):
    for colonne in range(im.shape[1]):
        for k in range(im.shape[2]):
            message_binaire += lsb(im[ligne][colonne][k])

message_clair = ''

for k in range(0, len(message_binaire), 8):
    octet = ''
    for i in range(8):
        octet += message_binaire[k+i]
    message_clair += chr(int(octet, 2))
        
print(message_clair)
