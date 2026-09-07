from pathlib import Path
import os

p = Path('/home/luca/documentos/redes/nada.txt')

# Lista os subdiretorios 
# print([x for x in p.iterdir() if x.is_dir()])

# Lista os arquivos do glob
# print(list(p.glob('**/*.txt')))

# Cria um caminho como diretórios ou arquivos 
# Verifica se existe 
# Verifica se é um diretório
# q = p / 'redes' / 'nada.txt'
# print(q)
# q.resolve()
# print(q.exists())
# print(q.is_dir())

# with q.open() as f: f.readline()

# Mostra o caminho 
# print(os.fspath(p))
# print(str(p))

# Mostra as partes do caminho
# print(p.parts)

# Mostra a raiz 
# print(p.root)
# print(p.anchor)

# Mostra o antecessor do ultimo item do caminho (Primeiro antecessor é 0 e assim por diante, 
# mas pode ser que queira mostrar todos os pais e ai não precisa colocar número)
# print(p.parents[0])
# print(p.parents)

# Mostra o nome do último item
# print(p.name)

# Mostra o a terminação do arquivo, caso não seja arquivo não mostra nada
# print(p.suffix)
# print(p.suffixes) # Caso seja mais de um sufixo

# Mostra o componente final sem o sufixo 
# print(p.stem)

# Mostra se o arquivo é absoluto 
# print(p.is_absolute())

# Junta um elemento ao arquivo
# print(p.joinpath('passwd'))

# Verifica se o caminho é 
# print(p.match('passwd'))