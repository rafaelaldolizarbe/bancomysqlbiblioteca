## Requisitos relativos ao microserviço.


Como estamos falando de uma biblioteca, talvez seja interessante usar JPQL ou Requests personalizadas, vale a pena entender  como pode ser a relação entre autores e livros. Podemos portanto listar logo abaixo quais os requisitos que nescessitamos para a entidade livro. Visto que esta é a base para o desenvolvimento de nossa aplicação.

Create:

Ao criar deverão ser incluídos informações a seguir:

 - titulo
 - autor (Sendo ideal que seja uma relação de muitos livros para um autor)
 - anoPublicacao 
 - editora
 - genero
 - isbn
 
 A primeira etapa pode ser sem a relação, porém isso não significa que isso irá perdurar por muito tempo.
 
 Read:
 
 Ao serem consultados deverão ser feitos alguns processos de filtragem e paginação. 
 
 - podendo ser configurável ou preconfigurado! (Ou no código ou nos parâmetros de requisição).
 - dinamic finders tais como
	- por ordem alfabética relativo ao nome da requisição (contain/contains)
	- por genero literário
	- por ano de publicação
	- pelo isbn do livro ou similaridade contain/contains
	
Outros tipos de filtros podem ser ativados caso haja junção de um ou mais filtros, no entanto isso pode acabar requerendo o uso de JPQL

Update:

O update poderá ter o Objeto como componente de atualização, recuperado a partir de um Read prévio, deverá ser atualizado por completo com todas as características pré carregadas pelo Front-end.

Delete

Delete funcional e delete lógico.
