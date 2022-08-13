# Resúmenes Bloque 1 - Todas las materias.

### Base de Datos

**`Historia y Evolución de los SGBD`**

Antes de comenzar a abordar los Sistemas de Gestión de Base de Datos , los invitamos a recorrer una breve lectura en la que se aborda la historia de los mismos.

**`Orígenes`**

Los orígenes de las bases de datos se remontan a la Antigüedad donde ya existían bibliotecas y toda clase de registros. Además también se utilizaban para recoger información sobre las cosechas y censos. Posteriormente, el uso de las bases de datos se desarrolló a partir de las necesidades de almacenar grandes cantidades de información o datos. Sobre todo, desde la aparición de las primeras computadoras, el concepto de bases de datos ha estado siempre ligado a la informática.

Posteriormente, en la década de los cincuenta se da origen a las cintas magnéticas, para automatizar la información y hacer respaldos. Esto sirvió para suplir las necesidades de información de las nuevas industrias. Y a través de este mecanismo se empezaron a automatizar información, con la desventaja de que solo se podía hacer de forma secuencial. Cada aplicación utilizaba ficheros de movimientos para actualizar y/o para consultar uno o dos ficheros maestros o, excepcionalmente, más de dos.

Cada vez que se le quería añadir una aplicación que requería el uso de algunos de los datos que ya existían y de otros nuevos, se diseñaba un fichero nuevo con todos los datos necesarios . Para evitar que los programas tuviesen que leer muchos ficheros. A medida que se fueron introduciendo las líneas de comunicación, los terminales y los discos, se fueron escribiendo programas que permitían a varios usuarios consultar los mismos ficheros on-line y de forma simultánea. Estos conjuntos de ficheros interrelacionados, con estructuras complejas y compartidas por varios procesos de forma simultánea , recibieron al principio el nombre de Data Banks, y después, a inicios de los años setenta, el de Data Bases.

El software de gestión de ficheros era demasiado elemental para dar satisfacción a todas estas necesidades. Por ejemplo, el tratamiento de las interrelaciones no estaba previsto, no era posible que varios usuarios actualizaran datos simultáneamente, etc...

Base Management Systems, que aquí denominamos Sistemas de Gestión de BD . En otras palabras, una base de datos es un conjunto estructurado de datos que representa entidades y sus interrelaciones. Una base de datos de un SI es la representación integrada de los conjuntos de entidades instancia correspondientes a las diferentes entidades tipo del SI y de sus interrelaciones. 
Década de los 60.
En esta misma época se dio inicio a las primeras generaciones de bases de datos de red y las bases de datos jerárquicas, ya que era posible guardar estructuras de datos en listas y arboles. Otro de los principales logros de los años sesenta fue la alianza de IBM y American Airlines para desarrollar SABRE, un sistema operativo que manejaba las reservas de vuelos, transacciones e informaciones sobre los pasajeros de la compañía American Airlines.

Década de los 70 – Sistemas Centralizados. Estaban orientados a facilitar la utilización de grandes conjuntos de datos en los que las interrelaciones eran complejas. Estos sistemas trabajaban exclusivamente por lotes . Al aparecer los terminales de teclado, conectados al ordenador central mediante una línea telefónica, se empiezan a construir grandes aplicaciones on-line transaccionales.

Aunque para escribir los programas de aplicación se utilizaban lenguajes de alto nivel como Cobol o PL/I, se disponía también de instrucciones y de subrutinas especializadas para tratar las BD que requerían que el programador conociese muchos detalles del diseño físico, y que hacían que la programación fuese muy compleja. Puesto que los programas estaban relacionados con el nivel físico, se debían modificar continuamente cuando se hacían cambios en el diseño y la organización de la BD. Por lo que respecta a la década de los setenta, Edgar Frank Codd, científico informático ingles conocido por sus aportaciones a la teoría de bases de datos relacionales, definió el modelo relacional a la par que publicó una serie de reglas para los sistemas de datos relacionales a través de su artículo «Un modelo relacional de datos para grandes bancos de datos compartidos». Este hecho dio paso al nacimiento de la segunda generación de los Sistemas Gestores de Bases de Datos.

Como consecuencia de esto, durante la década de 1970, Lawrence J. Codd sobre los sistemas de bases de datos relacionales, desarrolló el Relational Software System, o lo que es lo mismo, lo que actualmente se conoce como Oracle Corporation, desarrollando así un sistema de gestión de bases de datos relacional con el mismo nombre que dicha compañía. Inicialmente no se usó porque tuvo inconvenientes con el rendimiento, no podía competir con las bases de datos jerárquicas y de redes.

**`Diseño conceptual`**

En este apartado se estudia el modelo entidad-relación que permite diseñar el esquema conceptual de una BD, y es muy adecuado para las BDs relacionales. Su resultado es un diagrama entidad-relación.

Entidad: Es el menor objeto con significado en una instancia.
   Por ejemplo, para el diseño de una BD de la secretaría de un centro docente, el alumno con los siguientes datos:
                            DNI = 01234567Z,
                            Nombre y apellidos = Manuel Vázquez Prieto,
                            Teléfono = 91-12345678
                            Domicilio = Calle del Jazmín 7, 4 Izq.
Atributo: Es cada uno de los componentes que determinan una entidad.
Atributos monovalorados y multivalorados: Los atributos multivalorados son los que pueden contener más de un valor
simultáneamente, y monovalorados a los que sólo pueden contener un valor
Atributos simples y compuestos: Un atributo es compuesto cuando puede descomponerse en otros componentes o
atributos más pequeños, y simple en otro caso.
Clave: Es un atributo o conjunto de atributos cuyos valores identifican unívocamente cada entidad.

La entidad del ejemplo anterior viene determinada por los valores de sus atributos DNI, Nombre y Apellidos, Teléfono, Domicilio y COU. En este caso haremos de teléfono un atributo multivalorado. Por ejemplo, DNI es un atributo clave del tipo de entidad Alumnos.

Esto significa que los valores de la clave no se pueden repetir en el conjunto de entidades. Alumnos.

El concepto de clave distingue tres claves diferentes:

- Superclave: Es cualquier conjunto de atributos que pueden identificar unívocamente a una tupla.

- Clave candidata: Es el menor conjunto de atributos que puede formar clave. Puede haber varias en una tabla.

- ClavePrimaria: Es la clave candidata que distingue el usuario para identificar unívocamente cada tupla.

Tipo de entidad: Es el conjunto de entidades que comparten los mismos atributos.
Relación: Es una correspondencia entre dos o más entidades. Se habla de relaciones binarias cuando la correspondencia es
entre dos entidades, ternarias cuando es entre tres, y así sucesivamente.
Tipos de relación: Representan a todas las posibles relaciones entre entidades del mismo tipo.

_Observaciones_:

Las relaciones también pueden tener atributos. Por ejemplo, Matrícula puede tener el atributo Nota que indica la nota que el alumno ha obtenido en una asignatura determinada. Es posible que el mismo tipo de entidad aparezca dos o más veces en un tipo de relación. En este caso se asigna un nombre a cada papel que hace el tipo de entidad en el tipo de relación.

**`Diagrama entidad - relación.`**
El diseño del modelo E-R a partir del análisis inicial no es directo.De un buen diseño depende:

-             Eficiencia: Es muy importante en las BD cuando se manejan grandes cantidades de datos.

-             Simplicidad del código: Se cometen menos errores.

-             Flexibilidad: Se refiere a que el diagrama sea fácil de modificar.


De la especificación del problema de la secretaría se deduce que va ha haber un tipo de entidad alumnos, pero no cuáles son sus atributos. En cambio, sí tiene un DNI asociado, una dirección asociada, etc. 
                               {DNI=12345678V, Nomb.Ape=Luis Martínez, Telf.=01234567,
                               Cod=MD, Título=Matemática Discreta, Créditos=9}
                               {DNI=12345678V, Nomb.Ape=Luis Martínez, Telf.=01234567,
                               Cod=IS, Título=Ingeniería del Software, Créditos=X}
                               {DNI=12345678V, Nomb.Ape=Luis Martínez, Telf.=01234567,
                               Cod=LPI, Título=Laboratorio de programación I, Créditos=X}

Las asignaturas son siempre las mismas, con lo que por cada alumno que se matricula en la misma asignatura hay que
repetir toda la información:
                               { DNI=12345678V, Nomb.Ape=Luis Martínez, Telf.=01234567, … ,
                               Asignaturas={ {Cod=MD, Título=…}, {COD=IS,Título=…},
                               {Cod=LPI,Título=…} } }
                               { DNI=0000001, Nomb.Ape=Eva Manzano, Telf.=01234567, … ,
                               Asignaturas={ {Cod=MD, Título=…}, {COD=IS,Título=…},
                               {Cod=BDSI,Título=…} } }

Por cada profesor hay que apuntar las asignaturas que imparte. La información de las asignaturas debe estar por tanto relacionada con la de los profesores, pero ya está incluida con los alumnos. Hay que repetir la información de las asignaturas por lo que se consigue más redundancia.
No se pueden guardar los datos de una asignatura hasta que no se matricule un alumno en ella. Puede ser que en secretaría
quieran meter los datos de las asignaturas antes de empezar el proceso de matrícula:
No pueden. Una solución sería incluirlos con los datos de los alumnos vacíos (nulos), lo cual no sería nada
aconsejable. Los valores nulos se deben evitar siempre que sea posible.

El primer tipo de relación es Matrícula que relaciona cada alumno con las asignaturas en las que está matriculado. Además, está
relación tiene un atributo, nota, que se asocia cada tupla de la relación. El segundo tipo de relación es Supervisa que va de
Profesores a Profesores y que incluye los papeles Supervisor y Supervisado. La última es Imparte, que relaciona cada profesor
con la asignatura que imparte y el aula en la que da esa asignatura. Aquí también surgen varias posibilidades:
            a) Hacer dos relaciones binarias. Por ejemplo, profesor con asignatura y asignatura con aula.
            b) Hacer una relación ternaria entre profesores, aulas y asignaturas.
            c) Hacer tres relaciones binarias Profesores-Asignaturas, Profesores-Aulas, Asignaturas-Aulas.

El diagrama entidad-relación del ejemplo quedaría como se ilustra a continuación:
![image (2)](https://user-images.githubusercontent.com/105860382/174412780-f7d1a4a7-ec11-482b-b6af-b09d2f1b378f.png)

**`Restricciones.`**

Las restricciones de integridad son propiedades que se asocian a un tipo de entidad o de relación. Las instancias válidas del tipo de entidad o relación son aquellas en las que se verifique el conjunto de restricciones asociadas. Las restricciones son parte del diseño de la base de datos igual que los tipos de entidades o de relaciones.

Una restricción de clave consiste en imponer que un conjunto de atributos sea el que defina unívocamente a una fila de un tipo de entidades. Por ejemplo, en el tipo de entidades Alumnos se puede elegir DNI para identificar a un alumno en concreto, pero no sería conveniente usar el atributo Nombre y apellidos porque es muy posible encontrar a dos personas con los mismos nombres y apellidos. Por motivos de eficiencia conviene que el número de atributos elegidos sea el menor posible. A veces, es posible elegir varios conjuntos de atributos que contengan el mismo número de atributos, pero se suele escoger uno de estos conjuntos como el representativo, que se denomina clave primaria.

Todos estos conjuntos con el menor y mínimo número de atributos se denominan colectivamente como claves candidatas. Leyendo la relación en el sentido contrario diríamos que en un país pueden haber nacido muchas personas . Se refiere a que podamos encontrar cada entidad de un tipo de entidad en la relación que lo liga con otro u otros. Es decir, cada alumno definido en el tipo de entidad Alumnos debemos encontrarlo en la relación Matrícula, relacionado con la asignatura en la que esté matriculado.

En nuestro caso, las BD relacionales, el resultado de esta etapa es un esquema relacional basado en un modelo relacional. Este modelo fue creado por Codd a principios de los 70 al que dotó de una sólida base teórica. El concepto principal de este modelo es la relación o tabla. Es importante no confundir la tabla con las relaciones del modelo E-R.

Aquí las relaciones se aplican tanto a tipos de relaciones como a tipos de entidades. En este modelo no se distingue entre tipos de entidades y tipos de relaciones porque la idea es que una relación o tabla expresa la relación entre los tipos de valores que contiene.

A continuación se introducen los conceptos de este modelo

A continuación se introducen los conceptos de este modelo:

-                  Entidad. Igual que en el modelo E-R. También se les llama tuplas o filas de la relación.

-                  Atributo. Igual que en el modelo E-R. También se le llaman campos o columnas de la relación. El dominio de los

atributos tiene que ser simple: no se admiten atributos multivalorados ni compuestos.

-                 Esquema de una relación. Viene dado por el nombre de la relación y una lista de atributos. Es el tipo de entidad.

-                 Conjunto de entidades. Relación o tabla.

**`Paso de un esquema E-R a un esquema relacional.`**
Tipos de entidades
   Para cada tipo de entidad se crea una relación con el mismo nombre y conjunto de atributos. Por ejemplo, en el caso de la BD
de secretaría los tipos de entidades dan lugar a las siguientes relaciones:
                                                 Alumnos(DNI, Apellidos y Nombre, Domicilio, Teléfono, COU)
                                                 Asignaturas(Código, Título, Créditos)
                                                 Profesores(DNI, Apellidos y nombre, Domicilio, Teléfono)
                                                 Aulas(Edificio, Número)
 Tipos de relaciones:
   Para cada tipo de relación R se crea una relación que tiene como atributos:

-    Los atributos de la clave primaria de cada tipo de entidad que participa en la relación.

-   Los atributos de la propia relación.
   En ocasiones hay que renombrar atributos para evitar tener varios con el mismo nombre
Restricciones de cardinalidad

Claves:
         Hay dos casos:
   1. La relación proviene de un tipo de entidad en el esquema E-R. La clave es la misma que la del tipo de entidad.
   2. La relación proviene de un tipo de relación en el esquema E-R.

  **`Restricciones de cardinalidad:`**
            Es posible incorporar este tipo de restricciones de integridad cuando se desean indicar relaciones una a una, una a varias y varias a varias.

**`Restricciones de integridad:`**
No es el único tipo de restricciones de integridad que aparece automáticamente al traducir un esquema
E-R en otro relacional. Hay dos: restricciones de integridad referencial y restricciones de participación total. Las claves y las restricciones de integridad referencial son características que se expresar directamente en la práctica totalidad
de los SGBD relacionales.

Restricciones de integridad referencial: Al traducir un tipo de relación R, en cualquier instancia de R se debe cumplir que los valores de los atributos que hereda de una entidad (de su clave primaria) deben aparecer previamente en el conjunto de entidades.
Restricciones de participación total: Cuando cada valor de un tipo de entidad debe aparecer en un tipo de relación, como Alumnos en Matrícula, significa que, además
de la restricción de integridad referencial comentada en el apartado anterior, se debe cumplir que todo valor de DNI en Alumnos debe aparecer en el atributo DNI de Matrícula.

**`Cuestiones de diseño.`**

En ocasiones es posible combinar dos o más tablas en una sola. Generalmente se combinan por motivos de rendimiento.

El valor NULL es un valor que puede contener cualquier atributo, y lo soportan todos los SGBD. Valor desconocido. Por otra parte, ningún atributo que forme parte de una clave puede tomar el valor NULL. Diseño físico.Por
ejemplo, dado el ejemplo de personas nacidas en países:

![image (15)](https://user-images.githubusercontent.com/105860382/174413396-59b6446f-41ba-4afc-9a27-13b000bae85c.png)


**`Diseño físico.`**
El objetivo del diseño físico es la generación del esquema físico de la base de datos en el modelo de datos que implementa el SGBD.

Esto incluye la definición sobre el SGBD de las tablas con sus campos, la imposición de todas las restricciones de integridad y la definición de índices. Los índices son estructuras de datos implementadas con ficheros que permiten un acceso más eficaz a los datos. Se organizan con respecto a uno o más campos y guardan sólo la información del valor de la clave y la dirección física a partir de la cual se pueden encontrar registros con ese valor. El rendimiento de una base de datos depende fundamentalmente de las operaciones de lectura y escritura en disco.

Como las tablas generalmente no caben todas en la memoria principal, en general es necesario leer los datos del disco. Cuantos menos datos se lean o escriban en disco mejor será el rendimiento. Internamente, cuando el SGBD necesita buscar un registro según un valor de un campo sobre el que se ha definido un índice para resolver alguna consulta, busca el valor en el índice, consulta la dirección del registro adjunto y a continuación busca en el fichero de datos el registro. Esto es más rápido que hacer una búsqueda secuencial en el fichero de datos. Por un lado porque los índices no requieren en general una exploración secuencial de sus registros hasta encontrar el valor deseado, sino que se organizan como estructuras que permiten localizar el valor en menos tiempo. Por otra parte, si hay alternativas, siempre es mejor definir índices para los campos de menor tamaño, ya que cuanto más pequeño sea el campo clave, más pequeño será el índice y se necesitarán menos operaciones de lectura del índice. Además de las restricciones de integridad definidas por las claves, las restricciones de cardinalidad y las de participación total estudiadas anteriormente, se tratan las restricciones de los dominios, la integridad referencial, las dependencias funcionales y las dependencias multivaloradas. Las restricciones de integridad proporcionan un medio de asegurar que las modificaciones hechas a la base de datos por los usuarios autorizados no provoquen la pérdida de la consistencia de los datos.

**`Restricciones de integridad.`**

Además de las restricciones deintegridad definidas por las claves, las restricciones de cardinalidad y las de participación total estudiadas anteriormente, setratan las restricciones de los dominios, la integridad referencial, las dependencias funcionales y las dependencias multivaloradas.
Las restricciones de integridad proporcionan un medio de asegurar que las modificaciones hechas a la base de datos por los
usuarios autorizados no provoquen la pérdida de la consistencia de los datos. Protegen a la base de datos contra los daños
accidentales
Los tipos de restricciones de
integridad en una base de datos se pueden resumir como sigue:
                      • Claves.
                      • Cardinalidad de la relación.
                      • Restricciones de los dominios.
                      • Integridad referencial.
                      • Participación total.
                      • Dependencias funcionales.
                      • Otras restricciones

**`Restricciones de los dominios.`**

Las restricciones de los dominios son la forma más simple de restricción de integridad. Se especifica para cada atributo un
dominio de valores posibles. Una definición adecuada de las restricciones de los dominios no sólo permite verificar los valores introducidos en la base de datos sino también examinar las consultas para asegurarse de que tengan sentido las comparaciones que hagan.
La cláusula check permite especificar un predicado que debe satisfacer
cualquier valor asignado a una variable cuyo tipo sea el dominio. Por ejemplo:

![image (16)](https://user-images.githubusercontent.com/105860382/174414594-a41a5a39-9466-4852-876c-8252c5ff0f92.png)

**`Restricciones de existencia.`**

Dentro de las restricciones de los dominios, un tipo especial de restricción que se puede aplicar a cualquier dominio es la restricción de existencia. De manera predeterminada, los atributos que formen parte de la clave primaria tienen esta restricción impuesta.
Para declarar esta restricción en la definición de la tabla se usaría NOT NULL después del nombre del atributo y su dominio.


**`Restricciones de unicidad.`**

Otro tipo especial de restricción que se puede aplicar a cualquier dominio es la restricción de unicidad. Esta restricción evita la aparición de valores duplicados en las columnas .

![image (17)](https://user-images.githubusercontent.com/105860382/174414668-ce739ca4-b7ee-4ed9-8720-4813670a527d.png)

**`Restricciones de integridad referencial.`**

La integridad referencial permite asegurar que un valor que aparece en una relación para un conjunto de atributos
determinado aparezca también en otra relación para ese mismo conjunto de atributos.
 Este tipo de restricciones se denota simplificadamente:
                                                   Relación1.(Atributo1-1,...,Atributo1-N) ⊆
                                                   Relación2.(Atributo2-1,...,Atributo2-N)


El conjunto de atributos {Atributo1-1,...,Atributo1-N} se denomina clave externa, mientras que el conjunto de atributos
{Atributo2-1,...,Atributo2-N} es la clave primaria de Relación2.
El sistema, por su parte, puede asegurar la imposición de estas restricciones de integridad, evitando la aparición de valores que las violen. 
Se distinguen tres casos:

- Al insertar una tupla es necesario comprobar que haya otra con los valores de la clave externa igual a los de sus atributos clave. 
- Al borrar una tupla de R el sistema debe calcular el conjunto de tuplas de las otras relaciones que hacen referencia a R. Si
este conjunto no es el conjunto vacío, o bien se rechaza la orden borrar como error, o bien se deben borrar las todas las tuplas
que hacen referencia a R.

- Actualizar. Hay que considerar dos casos: las actualizaciones de la relación que realiza la referencia (r2) y las actualizaciones
de la relación a la que se hace referencia (r1).

**`Dependecias funcionales.`**

Una dependencia funcional es una propiedad semántica de un esquema de relación que impone el diseñador. Determina el valor de un conjunto de atributos a partir del valor de otro conjunto de atributos. Por ejemplo, en la siguiente relación se combinan los datos de los empleados, como su código de identificación y nombre, y de los centros a los que están adscritos, como la dirección y el teléfono.
![image (18)](https://user-images.githubusercontent.com/105860382/174414793-1df8999b-9213-44be-a387-c52f851ecc98.png)
En este ejemplo se muestra gráficamente que el valor del conjunto de campos DirecciónC y TeléfonoC depende del valor del
campo Centro. En concreto, a un centro en particular le corresponden unívocamente una dirección y un teléfono

**`Disparadores.`**

Un disparador es una orden que el sistema ejecuta de manera automática como efecto secundario de la modificación de la base de datos. Un ejemplo que se aplica a la imposición de restricciones de integridad sería la implementación de la detección de la violación de las dependencias funcionales.

**`Normalización.`**
 La traducción del esquema conceptual al lógico no es única. Es necesario contar con una medida de la calidad de la agrupación de los atributos en relaciones.
Como herramienta principal se usan las dependencias funcionales para agrupar los atributos en esquemas de relación, que se dice que se encuentran en una determinada forma normal. Un objetivo del diseño de bases de datos relacionales es agrupar atributos en relaciones de forma que se reduzca la redundancia de datos y así el espacio de almacenamiento necesario.

**`Redundancia de datos.`**

Un objetivo del diseño de bases de datos relacionales es agrupar atributos en relaciones de forma que se reduzca la
redundancia de datos y así el espacio de almacenamiento necesario. Por ejemplo, los siguientes dos esquemas 
                                              Empleados(Id_empleado, NombreP, DirecciónP, Puesto, Salario, Centro)
                                              Centros(NombreC, DirecciónC, Teléfono)
contienen la misma información que el siguiente:
                                              Empleados_Centros(Id_empleado, NombreP, DirecciónP, Puesto, Salario, NombreC, DirecciónC,
Teléfono).

![image (19)](https://user-images.githubusercontent.com/105860382/174414956-ff7f56ce-0389-4ddc-895c-4f8dcd9dc7f9.png)
![image (19)](https://user-images.githubusercontent.com/105860382/174414960-229c6bbc-ee42-42e3-a37b-2f9762bb7255.png)
![image (19)](https://user-images.githubusercontent.com/105860382/174414977-ea5f9ac1-8c5d-489a-b853-6994a4067ece.png)

La relación Empleados_Centros presenta redundancia de datos porque se repite para cada empleado la información asociada
al centro. Las relaciones con datos redundantes presentan diferentes anomalías de actualización: son las anomalías de inserción, borrado y modificación

**`Anomalías de actualización.`**

-  Anomalías de inserción: En primer lugar, cuando se inserta una nueva fila sin respetar las dependencias funcionales. En segundo lugar, la imposibilidad de añadir nuevos datos para el consecuente de la dependencia funcional sin que exista un antecedente para ella. En el ejemplo anterior no se puede dar de alta un centro a menos que exista un empleado destinado en él.

- Anomalías de modificación:  Se produce cuando se modifican las columnas con datos redundantes de sólo un subconjunto de las filas con el mismo dato.

-  Anomalías de eliminación: Se produce cuando se eliminan todas las filas en las que aparecen los datos redundantes por lo que se pierde los datos de la dependencia funcional.

**`Formas normales y normalización.`**

La forma normal de una relación se refiere a la mejor forma normal que satisface un esquema de relación indicando así el grado hasta el que se ha normalizado. La indicación del grado de calidad de un esquema de relación se refiere en general en el contexto global del esquema de la base de datos relacional, es decir, en el conjunto de todos los esquemas de relación de la base de datos.
Dos propiedades que se deben cumplir para poder asegurarlo son:
            • La propiedad de preservación de dependencias, que asegura que las dependencias funcionales originales se mantienen
en algún esquema de relación después de la descomposición.
            • La propiedad de la posibilidad de reproducir la información de la tabla antes de su descomposición a partir de las tablas
resultado de ella.
   Las formas normales más habituales, por orden ascendente de exigencia de las propiedades deseadas, son:
                                                Primera (1FN)
                                                Segunda (2FN)
                                                Tercera (3FN)
                                                Boyce/Codd (FNBC)

**`Primera forma normal.`**

Actualmente se considera como parte de la definición formal de relación, porque establece que los dominios de los atributos sólo pueden ser atómicos, para evitar atributos multivalorados, compuestos y sus combinaciones. Por ejemplo, si se asume que en la entidad Centros, un centro puede tener más de un teléfono, podríamos tener una representación como la siguiente:

![image (21)](https://user-images.githubusercontent.com/105860382/174415226-bc4c1d5b-0b67-4f38-bc9b-8c7c7d25f0a9.png)

Hay tres posibilidades de representar la entidad parasatisfacer la primera forma normal:

- Eliminar el atributo Teléfonos y crear una nueva relación que asocie en cada fila un centro con un teléfono. La clave de la primera relación debe formar parte de la clave de la segunda relación. 
 
![image (22)](https://user-images.githubusercontent.com/105860382/174415292-d1000c3e-dc14-4814-b260-68da8b10a5c0.png)
![image (22)](https://user-images.githubusercontent.com/105860382/174415296-6c74d710-a80c-4275-bdfb-8fa695796926.png)

- Ampliar la clave de la relación de manera que incluya al atributo multivalorado. Presenta como inconveniente añadir una nueva relación al esquema de la base de datos y redundancia.

![image (23)](https://user-images.githubusercontent.com/105860382/174415318-fc5f6775-1e77-4759-a0e6-6cb59fdee697.png)

- Si se conoce la cardinalidad máxima del atributo multivalorado, se pueden crear tantas columnas como la cardinalidad máxima. Presenta como inconveniente el uso de valores Null.

![image (24)](https://user-images.githubusercontent.com/105860382/174415350-708592ae-b0d5-469a-818b-2cc1dfd9d817.png)

Si el atributo multivalorado es compuesto, como es el caso de representar varias direcciones para un empleado:
                                  Empleados(Id_empleado, NombreE, {Direcciones(Calle, Ciudad, CódigoPostal)})
Esta relación se puede descomponer en dos:
                                  Empleados(Id_empleado, NombreE)
                                  DireccionesE(Id_empleado, Calle, Ciudad, CódigoPostal)

**`Segunda forma normal.`**

En el ejemplo a continuación se puede observar que existen anomalías de actualización causadas por las dependencias
funcionales DF2 y DF3, ya que como sus antecedentes no son clave, puede haber varias filas con el mismo consecuente. Se usa
una notación gráfica para la expresión de las dependencias funcionales. Así:

![image (25)](https://user-images.githubusercontent.com/105860382/174415437-a67dedfd-79a0-4d20-b4e8-bcf191591ca9.png)

 Se dice que una relación está en segunda forma normal si cada atributo que no forme parte de la clave primaria depende funcional y completamente de cada clave. Un esquema que no se encuentre en segunda forma normal puede traducirse en varios esquemas que sí lo estén. 
![image (26)](https://user-images.githubusercontent.com/105860382/174415539-97e3d1b1-49ce-4d3d-ad99-6a7cfde28a55.png)

Hay que observar que este procedimiento asegura que el resultado está, al menos, en segunda forma normal.

**`Tercera forma normal.`**

En el ejemplo a continuación se puede observar que existen anomalías de actualización causadas por la dependencia funcional
Sin embargo, este esquema está en segunda forma normal porque los dos últimos atributos, que son los que causan las anomalías, dependen completa del único atributo que forma la clave primaria. 

![image (27)](https://user-images.githubusercontent.com/105860382/174415603-70b31cce-09b8-4dcc-89b3-8cb76f1c902c.png)

La tercera forma normal se basa en el concepto de dependencia funcional transitiva.  En el ejemplo anterior, DF3 es una dependencia funcional transitiva:

![image (28)](https://user-images.githubusercontent.com/105860382/174415633-399677e7-465d-4a80-87d3-538cd679fcc5.png)

El procedimiento para normalizar esta relación consiste en descomponerla en los atributos definidos por la dependencia funcional responsable de la transitividad. . En el ejemplo anterior, el resultado de la descomposición es:

![image (29)](https://user-images.githubusercontent.com/105860382/174415658-0ad82054-a35d-4533-aa25-b3bfc20f5944.png)

**`Forma normal de Boyce-Codd`**

La forma normal de Boyce-Codd se propuso como una forma más simple que la tercera, pero en realidad es más estricta porque cada relación en FNBC está en 3FN pero lo contrario no se cumple. Por ejemplo, considérese la siguiente relación, que está en 3FN pero no en FNBC. 

![image (30)](https://user-images.githubusercontent.com/105860382/174415736-57c2df9b-69d7-4896-a2f4-57b3ecc58c5e.png)

En este ejemplo, que cumple la 3NF, hay una anomalía que se debería poder evitar, porque si no se vigila la dependencia funcional DF2 se podría añadir una tupla de manera que una persona fuese investigadora principal de dos proyectos.

![image (31)](https://user-images.githubusercontent.com/105860382/174415750-e4ec7df9-3a26-48a0-bc92-0d3651bf8964.png)

Todas estas descomposiciones pierden la dependencia funcional DF1 porque las dependencias funcionales se refieren al contexto local de un esquema, no hacen referencia a esquemas externos.

**`Desnormalización para el rendimiento.`**

Utilizan la redundancia para mejorar el rendimiento para aplicaciones concretas. La penalización sufrida por no emplear un esquema normalizado es el trabajo extra de mantener consistentes los datos redundantes. En el esquema normalizado esto exige una reunión de cuenta con impositor.
Una alternativa para calcular la reunión sobre la marcha es almacenar una relación que contenga todos los atributos de cuenta y de impositor. El proceso de tomar un esquema normalizado y hacerlo no normalizado se denomina desnormalización, y los diseñadores lo utilizan para ajustar el rendimiento de los sistemas para dar soporte a las operaciones críticas en el tiempo. Una alternativa mejor, soportada hoy en día por muchos sistemas de bases de datos, es emplear el esquema normalizado y, de manera adicional, almacenar la reunión en forma de vista materializada.

**`Normativa de denominación.`**

El objetivo es que los nombres que se elijan indiquen de forma lo más clara posible el significado del elemento al que se refiere el nombre. Cada empresa suele usar una normativa diferente y más o menos complicada. 

**`Identificadores.`**

Los identificadores se construyen generalmente con letras y números. En muchos SGBD no se distinguen mayúsculas de minúsculas, pero su uso nos puede ayudar a hacer más legibles los identificadores.
Separar cada palabra poniendo la primera letra de cada una en mayúsculas, como en NombreDelPaciente. Otra alternativa final, menos usada, es usar espacios en blanco para la separación, como en Nombre del paciente.

**`Tablas.`**
 Las tablas representan entidades y sus nombres deberían describir las entidades que representan. Por ejemplo, Pacientes sería un identificador que describe a una tabla que contiene información sobre las entidades Pacientes.
Además se escribe en plural porque el tipo de entidad contiene un conjunto de entidades . Algunas tablas, sin embargo, no presentan entidades. Pueden representar relaciones entre entidades. Cuando no se pueda encontrar un identificador adecuado para una relación siempre se puede escribir un identificador con los dos nombres de las tablas, como PersonasTeléfonos.

Reglas básicas de denominación de tablas:

   • Seleccionar nombres de tablas basados en los nombres posibles para las entidades involucradas.
                  • Usar sustantivos para los nombres de las tablas.
                  • Asegurarse de que los nombres tienen un sentido intuitivo en la cultura de quienes utilizan la base de datos.
                  • Expresar las relaciones capturadas por las tablas mediante la vinculación de los nombres de las entidades vinculadas por la tabla.
Las columnas representan elementos discretos de información sobra la entidad nombrada por la tabla.

**`Restricciones.`**

Después hay que utilizar el nombre de la tabla a la cual se aplica la restricción como segundo elemento del nombre. Una restricción de clave principal para la tabla Médicos se debería nombrar CP_Médicos. En el caso de claves externas, donde están involucradas dos tablas, hay que poner el nombre de la segunda tabla como tercer elemento para el nombre de la restricción. Cuando están involucradas dos tablas hay que hacer que el segundo elemento del nombre sea la tabla con la clave externa y que el tercer elemento sea la tabla donde reside la clave principal.

**`Controles.`**

Cada tipo de control se debería denominar con una indicación del tipo de control, anteponiendo a un nombre descriptor un
prefijo que indique el tipo, como se propone en la siguiente tabla.

![image (33)](https://user-images.githubusercontent.com/105860382/174416211-c606d977-c444-419c-ae7d-e0fb2d538371.png)

**`Variables.`**

Cada variable se debería denominar con una indicación del tipo de la variable, anteponiendo a un nombre descriptor un prefijo
que indique el tipo, como se propone en la siguiente tabla.

![image (34)](https://user-images.githubusercontent.com/105860382/174416233-349ce76b-d303-4d98-8e04-f79e13aab769.png)
![image (35)](https://user-images.githubusercontent.com/105860382/174416238-1d24a40f-fafe-43bd-ba5a-aa098a7a8fc0.png)

**`Objetos de la base de datos.`**

Cada objeto de la base de datos se debería denominar con una indicación del tipo de objeto, anteponiendo a un nombre
descriptor un prefijo que indique el tipo, como se propone en la siguiente tabla.

![image (36)](https://user-images.githubusercontent.com/105860382/174416258-06a403fb-e854-4bdf-bea8-780cc011f380.png)




------------------------------------------------------------------------------------------------------------------------
### METODOLOGIA AGILES

SCRUM

Proceso para el desarrollo de software Define un conjunto completo de actividades que necesarias para concluir el objetivo.
MODELO CASCADA
1)	DEFINICION DE REQUERIMIENTOS
2)	DISEÑO DEL SOFTWARE Y DEL SISTEMA
3)	IMPLEMENTACION Y PRUEBAS DE UNIDADES
4)	INTEGRACION Y PRUEBA DE SISTEMAS
5)	OPERACIONES Y MANTENIMIENTO

- Una de las ventajas más importantes que tenemos al implementar METODOLOGIAS AGILES es que podemos mejorar la velocidad y eficiencia de los equipos en las empresas.

CICLO DE VIDA
El ciclo de vida de un software corresponde desde el momento en que se da inicio al desarrollo del mismo, hasta que este deje de tener uso. El mismo consta de estándares para su creación, mantenimiento y explotación.
AGILIDAD
“La gestión de proyectos ágil no se formula sobre la necesidad de anticipación, sino sobre la adaptación continua.”
Quizá ya no hay “productos finales”, sino productos en continua evolución y mejora.
MANIFIESTO AGILE (VALORES)
-Valorar al individuo por encima de los procesos.
-El software que funciona por encima de la documentación exhaustiva.
-La colaboración del cliente por encima de lo contractual.
-La respuesta al cambio por encima del seguimiento de un plan.
-Colaboración estrecha con el cliente.
-Predisposición y respuesta al cambio.
-Desarrollo incremental con entregas frecuentes de funcionalidad.
-Comunicación verbal directa.
-Simplicidad, sólo los artefactos necesarios.
-Motivación, compromiso y responsabilidad del equipo por la autogestión, auto-organización.
DEFINICION SCRUM
Es un marco de trabajo a través del cual las personas pueden abordar problemas complejos adaptativos, a la vez que se entregan productos de forma eficiente y creativa con el máximo valor.
CARACTERISTICAS
*: Es un marco de trabajo a través del cual las personas pueden abordar problemas complejos adaptativos, a la vez que se entregan productos de forma eficiente y creativa con el máximo valor.
*Utiliza procesos interactivos/incrementales.
*Orientado a resultados y compromisos.
*No está restringido a proyectos de software solamente.
*Su visión es opuesta a la propuesta por la metodología en cascada.
PILARES
Transparencia Los aspectos significativos del proceso deben ser visibles para todos aquellos que son responsables del resultado. La transparencia requiere que dichos aspectos sean definidos en base a un estándar común, de tal modo que los observadores compartan un entendimiento común de lo que se están viendo. 
Inspección Los usuarios de Scrum deben inspeccionar frecuentemente los Artefactos de Scrum y el progreso hacia un objetivo para detectar variaciones indeseadas. Su inspección no debe ser tan frecuente como para que pueda interferir en el trabajo. Las inspecciones son más beneficiosas cuando se realizan de forma diligente por inspectores expertos en el mismo lugar de trabajo. 
Adaptación Si un inspector determina que uno o más aspectos de un proceso se desvían de los límites aceptables y que el producto resultante será inaceptable, el proceso o el material que está siendo procesado deben ajustarse
SPRINT
El Sprint es un período de corta duración que debe finalizar con un prototipo operativo o producto parcialmente entregable. El mismo se repite n veces a lo largo del proyecto y permite hacer entregas de producto en partes, donde cada entrega, es un incremento de funcionalidad respecto al anterior.
DURANTE EL SPRINT
*No se realizan cambios que puedan afectar al objetivo del Sprint (Sprint Goal);
*Los objetivos de calidad no disminuyen;
*El alcance puede clarificarse y renegociarse entre el Propietario del Producto (Product Owner) y el Equipo de Desarrollo a medida que se va aprendiendo más.
COMUNICACIÓN 
“La forma más eficiente y efectiva de comunicar información de ida y vuelta dentro de un equipo de desarrollo es mediante la comunicación cara a cara”


------------------------------------------------------------------------------------------------------------------------
### **ÉTICA Y DEONTOLOGÍA PROFESIONAL**

**Etica** disciplina filosófica que define *"principios directivos que orientan a las personas en cuanto a la concepción de la vida, el hombre, los juicios, los hechos, y la moral”.*

**ÉTICA EN LA INFORMÁTICA**
La ética abarca el conjunto de normas que hacen y mejoran el desarrollo de la actividad de los profesionales y es la encargada de ir marcando las pautas éticas del desarrollo de su actividad mediante valores universales reconocidos por cada persona.
Debido a que Internet es una red de comunicación no regulada, permitiendo que algunos usuarios comenten actividades no éticas e ilegales que perjudican a la sociedad, la informática se ha visto en la necesidad de reflexionar sobre una ética particular, que fue determinada como ética informática (EI). Su origen está en el uso cada vez mayor de las tecnologías de la información en nuestra vida social. Su rol deriva en analizar problemas éticos que son creados por la tecnología en el uso y manejo de ordenadores, como también los que son transformados o agravados por la misma.
La ética informática la podemos aplicar descubriendo y articulando dilemas éticos claves en informática, proponiendo un marco conceptual adecuado para entender dichos dilemas éticos originados por informática y estableciendo una guía que reglamente el uso de las tecnologías en la información.
El objetivo de la EI es de aportar guías sobre la forma adecuada de actuación cuando no hay reglamentación.
El contenido de ética informática es importante, por ser considerarlo como un instrumento que facilita reconocer los problemas y resolverlos de acuerdo a los objetivos buscados. Los códigos de ética, tal como se conocen en el mundo de las empresas, son sistemas de reglas establecidos con el propósito general de guiar el comportamiento de los integrantes de la organización y de aquellos con los cuales ésta actúa habitualmente: clientes, proveedores y contratistas.

A continuación se conceptualizan los principios que adopta la ética de la información:
**_- La uniformidad:_** todo se procesa, se tratan los funcionamientos, cambios, acciones y eventos como procesos de información, pero el proceso no será tomado como tal, sino se seleccionará lo más significativo de la actividad.
**_- La reflexividad de procesos de información:_** cualquier proceso de información necesariamente genera y es responsable de la información.
**_- La inevitabilidad de procesos de información:_** la ausencia de información también es un proceso de información.
**_- La uniformidad de ser:_** una entidad es un paquete consistente de información, que puede nombrarse y la ética trata cada entidad como una entidad de información.
**_- La uniformidad de agencia:_** un agente es cualquier entidad, capaz de definir fenómenos para la producción de información y que puede afectar la infoesfera. No todas las entidades de información son agentes.
**_- La uniformidad de no ser:_** no ser, es la ausencia o negación de cualquier información o lo que se denomina entropía de información, esta es una cantidad específica de desorden, degradación o aleatoriedad en un sistema de energía productiva de información, es el ruido.

**CÓDIGOS ÉTICOS:**
La informática afecta a los derechos fundamentales que involucran la protección de copyright, la libertad intelectual, la contabilidad y la seguridad. Existen códigos profesionales que ofrecen una base para tomar decisiones éticas y aplicar soluciones éticas a situaciones que involucran la provisión y uso de información que reflejan la dedicación de una organización al servicio informático responsable. La evolución de los formatos y necesidades informáticos requiere reconsideración continua de los principios éticos y cómo se aplican estos códigos. Las consideraciones en cuanto a la infoetica influencian las decisiones personales, la practica profesional y la política pública. Por lo tanto, el análisis ético debe proveer una base para tomar en consideración muchos y varios dominios en cuanto a cómo se distribuye la información.

**LAS PROPIEDADES DE LOS BIENES INFORMÁTICOS:**
El software informático es un bien que describe un conjunto de instrucciones que indican lo que un sistema informático debe hacer. Conforme el software va adquiriendo más importancia en la sociedad, hay toda una serie de problemas que hay que tener en cuenta. El primer problema que aparece con el software es la copia ilegal de programas. Otra cuestión que aparece con el desarrollo del software es el problema de la calidad de una aplicación informática. Las aplicaciones informáticas complejas se realizan entre un equipo de personas que desarrollan tareas diversas tales como formalizar (especificar) el problema, programar el código de la aplicación, someterle a una batería de pruebas, realizar la instalación de la aplicación y por último verificar su correcto funcionamiento. En el caso de aplicaciones complejas, es imposible que se lleguen a testear completamente, por lo que el comprador se tiene que conformar con que hay una alta probabilidad de que el programa no tenga ningún error, debido a estas situaciones son numerosos los problemas que se presentan.

**ETICA Y MORAL**
Ambos términos presentan una gran diferencia, tanto la ética y moral se ocupan de los actos humanos pero la ética los estudia para explicar cómo son estos actos, mientras que la moral indica cómo deben ser. En otras palabras, la ética describe y la moral prescribe. Es decir a diferencia de la ética, la moral tiende a la subjetividad y a la diversidad de interpretaciones, en cambio la ética al ser una ciencia objetiva y ser una rama de la filosofía, estudia la esencia y los juicios de la conducta humana en la sociedad, para proponer principios y normas regulativas que nos permitan a los individuos la formación de una sociedad creciente.

![Esta es una imagen](https://user-images.githubusercontent.com/106851962/175198364-b74e1a86-f371-4bf3-b9f2-64b3083dfb2d.jpg)

**ÉTICA ETIMOLÓGICA** 
La definición de ética se basa en su raíz etimología, la cual es proveniente del latín êthos que hace alusión al carácter o lo perteneciente al carácter. Asimismo, la ética puede estar relacionada tanto a la parte social de la persona como a la ética profesional o la ética empresarial de un conjunto de trabajadores.

**ETIMOLOGÍA DE MORAL**
La moral es un conjunto de normas, creencias, valores y costumbres que dirigen o guían la conducta de grupos de personas en la sociedad. Se distingue de la ética en que esta es una moral transcultural o universal, aunque ambas se suelen confundir. La moral permite distinguir cuáles acciones son buenas y cuáles malas para un grupo social. Otra perspectiva la define como el conocimiento de lo que el ser humano debe hacer o evitar para conservar la estabilidad social.

**CÓDIGOS MORALES** 
Un código moral es un conjunto de normas y valores morales que garantizan la supervivencia del grupo a través de acuerdos entre lo que debe ser considerado moralmente bueno o malo. Los códigos morales se establecen entre un grupo de personas, sin importar el tipo y tamaño, puede tratarse de una familia, de un equipo, de una nación o de una comunidad. Dado que las personas pertenecemos a diferentes grupos sociales, regimos nuestra conducta en base a diferentes códigos morales. 

**DEONTOLOGIA INFORMATICA** 
La deontología es un sentido más amplio, la ciencia o tratado de los deberes y normas morales. En un sentido más concreto, tiene que ver con el comportamiento moral o ético, es decir con los principios y normas morales que regulan las actividades humanas. La deontología informática, por extensión, trata, por tanto, de la moral o ética profesional en el manejo del activo más importante que tienen las empresas, un bien cada vez más apreciado, que es la información.

**LA SOCIEDAD DE LA INFORMACIÓN** 
La Sociedad de la Información es un hecho permanentemente reconstruido por actores que pertenecen a sectores sociales de la gran mayoría de los países del globo. A través de la creación, distribución y manipulación de la información se vinculan con gran parte de las actividades culturales y económicas. 

Estas cuatro leyes clarifican las grandes líneas de cómo pueden vivir las personas, como agentes responsables en la Sociedad de la información o post-información. 
                   **-** Nunca se tiene que producir entropía «ausencia de información semántica» en la infoetica.
                   **-** Debe prevenirse la entropía en la infoetica.
                   **-** Se tiene que eliminar la entropía en la infoetica.
                   **-** Se debe garantizar el bienestar, la cantidad, calidad y variedad de la información en la infoetica.

La evolución acelerada de las TICs ha generado cambios en todos los ámbitos sociales, económicos y financieros; ha producido la aparición de una cultura informática que está perturbando directa o indirectamente los valores morales y éticos de los individuos y de las organizaciones. La atención de los actuales gerentes debe enfocarse en el desarrollo vertiginoso, constante y evidente de las TICs, y en el cambio que el desarrollo tecnológico está generando en esta sociedad actual. 

Los problemas en los sitios de trabajo informatizados, las aplicaciones de las leyes en el ciberespacio, la ética de la computadora profesional y la metodología de códigos profesionales son temas para el estudio de la ética. Surgen entonces problemas en los ambientes de trabajo, códigos de ética profesionales para los consumidores y profesionales de la informática, la ética de la inteligencia artificial y la vida artificial, los problemas éticos de la sociedad de la información son transformados profundamente por la tecnología de la información, esta no solo tiene un valor por el discurso moral y en nuestros conceptos éticos sino también en nuestras experiencias personales, nuestra identidad mental y física.

**DILEMAS EN LAS REDES SOCIALES**
[El lado oscuro de las redes sociales](https://www.youtube.com/watch?v=trGgBTbj4z8)
Las redes sociales constituyen una gran plataforma de información disponible para todo el mundo y por ende dependiendo de las tendencias de los diferentes grupos y momentos que se viven, se pueden generar situaciones que propicien caos, discriminación, polarización, alineación y solo ser revertidos por motivaciones positivas como orden, altruismo, democracia, ayuda social y que se logrará siempre que la sociedad asuma su responsabilidad. Ahora bien, cada vez más, sabemos las problemáticas que hay detrás de las redes sociales. Este mundo virtual  ha estudiado perfectamente el comportamiento humano y los procesos psicológicos. Por ello, todo está preparado para generar una adicción y dependencia  a las redes sociales y a Internet.



------------------------------------------------------------------------------------------------------------------------
### INGLÉS

1. Lectocomprensión en inglés

PRE-LECTURA: ANTICIPACIÓN las actividades de pre-lectura, que son las que permiten dotarse de objetivos de lectura y actualizar los conocimientos previos relevantes.
Previewing : la previsualización consiste en dar una mirada general, global al texto con el fin de determinar a grandes rasgos el tema del mismo.
Hipótesis de lectura: consiste en realizar una predicción sobre el tema del texto. Se realiza sin necesidad de leer el texto en sí mismo. Hacemos una predicción basándonos en los elementos resaltados del texto y en el paratexto. 

1.1. Estrategias de Lectura
Skimming: implica una lectura selectiva, ya que consiste en leer solo partes del texto con el objetivo de localizar la(s) idea principal(es).
 Scanning: implica pasar la vista por el texto con una pregunta en mente o con un propósito, por ejemplo, buscar información específica.

1.2. Cognados o palabras transparentes: son aquellas palabras de dos lenguas diferentes que poseen un origen común, ortografía y pronunciación similar y sinonimia cercana.

1.3. Falsos cognados o Falsos amigos:Los falsos cognados o falsos amigos que son palabras que se escriben igual o muy parecido en ambos idiomas -castellano e inglés- pero que, por el contrario, difieren ampliamente en su significado.

3. Verbo "To be"
Sus significados principales son los siguientes: Ser o Estar
Sirve para expresar la edad y también sensaciones, en cuyo caso se traduce como ‘tener’.
Otro caso particular es cuando se habla del clima y entonces se traducirá como “hacer”.
Existen otros casos donde el verbo TO BE se emplea como auxiliar para conjugar tiempos verbales y también para dar órdenes de manera impersonal.

2.1. Formas Affirmativa, Negativa, Interrogativa

![TRES](https://user-images.githubusercontent.com/87509699/176022610-6c4e5429-f8b5-49e1-8e46-5a2cf0f3feea.jpg)


4. Presente Simple
Podemos emplear el presente simple para:

-  referirnos a cosas que siempre son verdad, o que consideramos como hechos,
- para hablar de nuestros hábitos: para aportar más información sobre las rutinas podemos añadir adverbios de frecuencia, como **always, sometimes, hardly ever, never** .
- también puede hacer alusión al futuro en algunas ocasiones: detrás de algunos adverbios o locuciones adverbiales de futuro, como **when, before, after, as soon as, until** , usamos asimismo el presente simple, aunque estemos refiriéndonos al futuro

3.1. Auxiliares y reglas
Los auxiliares que se usan son DO y DOES para la forma interrogativa y negativa.

![10b-3-presente-simple-en-ingles](https://user-images.githubusercontent.com/87509699/176023901-c337216f-a199-47b1-a4e1-16d5ce4d6e7f.jpg)

3.2. Excepciones y variantes

- Si el verbo termina en una vocal que no sea “e”, se añade “-es” en la tercera persona del singular,
- También añadimos “-es” si el verbo termina en una de las siguientes consonantes: s, z, ch, sh o x.
- Si el verbo termina en una consonante seguida de “y”, es necesario cambiar la “y” por una “i” para, después, seguir la regla anterior añadiendo “-es”

4. Términos gramaticales
<html>
<body>
<!--StartFragment-->

Término | Definición | Ej. en castellano | Ejemplo en inglés
-- | -- | -- | --
Adjetivo | palabra que se agrega al sustantivo para designar una cualidad o determinar su extensiónModifica al sustantivo | ImportanteBuenoÚtil | importantgoodusefulNo tienen género o número, es decir que no hay diferencias entre femenino/masculino singular/plural
Adverbio | Modifica el verbo, el adjetivo u otro adverbio. | muybiendelicadamente | verywelldelicately
Artículos | Preceden a los sustantivos | el – la –los –lasun - unaunos - unas | thea – an--
Conectores | Palabras o frases que unen | yperopara que | andbutso that
Preposiciones | Palabras o frases que unen | deendelante de | ofinin front of
Pronombres | Reemplazan al sustantivo | ellosmíole | theyminehim
Sustantivo | Palabra que designa un ser, objeto o lugar | alumnopublicaciónodontologíaaula | studentpublicationdentistryclassroom
Verbo | Palabra que designa acciones (por extensión, palabras como “estar” o “parecer” son considerados verbos, aunque no denotan una acción) | leeraprenderserestarpareceraumentar | readlearnbebeseem/appearincrease

<br class="Apple-interchange-newline"><!--EndFragment-->
</body>
</html>

4.1. Palabras estructurales - Palabras conceptuales

Palabras conceptuales o de contenido (expresan conceptos; transmiten significado): sustantivos, verbos, adjetivos y adverbios. 

Palabras estructurales (ayudan a darle una estructura coherente y cohesiva al texto): preposiciones, artículos, conjunciones y pronombres.


4.2. Adverbios de frecuencia

![adverbs-frequency](https://user-images.githubusercontent.com/87509699/176023374-655d7384-587d-45f6-801e-47c3d9b41a05.jpeg)



------------------------------------------------------------------------------------------------------------------------
### Ejercicio Profesional

**Competencias profesionales**

Conjunto integrado de habilidades, conocimientos y aptitudes que se necesitan para desempeñar un empleo específico o desarrollar determinadas actividades profesionales.

Cada puesto de trabajo requiere unas competencias distintas, por lo que, dependiendo de tu objetivo profesional, necesitarás desarrollar unas u otras.
 
Tipos de competencias profesionales
Existen dos grandes grupos:
 
[Competencias técnicas]
También llamadas competencias específicas o hard skills, se asocian a determinados puestos de trabajo y son esenciales para desarrollar una actividad laboral concreta.
Estas, difieren en cada profesión y normalmente se adquieren realizando una formación específica. 
 

Las competencias transversales o soft skills, son aquellas habilidades, conocimientos y actitudes que pueden ser generalizados a cualquier entorno laboral.
 
Las competencias transversales sirven para desarrollar diferentes ocupaciones y se han adquirido en diferentes contextos (laborales o no). 
Son una parte fundamental en el perfil profesional, ya que te permiten diferenciarte de otras personas con la misma formación y experiencia. 
 
Para el ejercicio eficaz de una profesión, tienes que poner en juego los dos tipos de competencias.


 **La importancia de las Competencias Transversales en el ejercicio profesional**

![image](https://user-images.githubusercontent.com/106411071/174883028-6b0a16ec-8800-44bb-b0ff-f22f4b2befde.png)

Las competencias transversales son aquellas que recogen varios aspectos genéricos como son los de conocimientos, habilidades, destrezas y capacidades que debe tener cualquier persona, antes de ser incorporado al mercado laboral.
Tienen características tales como: no se encuentran ligadas a ninguna ocupación en particular; son necesarias en toda clase de empleo; son adquiridas en el proceso de enseñanza aprendizaje; permiten el desarrollo continuo de nuevas habilidades y su adquisición y desempeño es evaluable
A las competencias transversales también se les llama genéricas.
Se les llama genéricas porque su desarrollo potencia el desarrollo de otras destrezas, habilidades y competencias en sí, es decir, una competencia contiene a otra.

**Introducción al Modulo "Ejercicio Profesional"**
El Instituto Superior Politécnico de la Provincia de Córdoba tiene como principal objetivo formar profesionales técnicos capaces de adaptarse a los cambios del mundo productivo, con perfiles y habilidades pertinentes a lo que demande el sector productivo.
El/La Técnico/a Superior en Desarrollo Web y Aplicaciones Digitales, es un profesional que desarrolla aplicaciones para  la World Wide Web y aplicaciones distribuidas en red que se ejecutan desde un servidor a un navegador web.


**Comunicación asertiva**
Como comunicación asertiva denominamos aquella mediante la cual logramos manifestar a los otros de forma simple, clara y oportuna, lo que sentimos, queremos o pensamos.
La comunicación asertiva es una habilidad social de gran valor, que está asociada a la inteligencia emocional y a la capacidad para comunicarse de manera armoniosa y eficaz con los demás.
se trata de comunicar de manera clara y objetiva nuestro punto de vista, nuestros deseos o nuestros sentimientos, con honestidad y respeto, sin menoscabar, ofender o herir al otro o a sus ideas u opiniones.
En este sentido, la comunicación asertiva trata de evitar errores frecuentes en la comunicación, como los ataques personales, los reproches o las ofensas, que no hacen sino dificultar la comunicación, hacerla inefectiva o, simplemente, invalidarla.
Se respeta al otro y a lo que este quiera o necesite expresar. Pero también se construye sobre la empatía por el otro, pues esto permite que haya acercamientos y confianza mutua entre las personas y sus diferentes posturas.
Otro aspecto muy importante en la comunicación asertiva es la interlocución constante y la voluntad de negociar.

La comunicación asertiva con relación al comportamiento externo, nos encontramos que las personas hablan de manera fluida, mantienen un contacto visual que no es amenazante, y hay comodidad en su postura.

**Características de la comunicación asertiva**

1. Cuando miramos a nuestro interlocutor estamos mostrando interés y, esta actitud aumenta sustancialmente la confianza y cercanía.
2. Tener una postura corporal abierta, ya que nuestra comunicación no verbal demuestra interés y sinceridad.
3. Observar nuestros gestos y aprender a controlarlos, ya que los gestos adecuados nos ayudan a dar énfasis a los mensajes que deseamos reforzar.
4. Fijarnos en nuestros niveles de voz, ya que al modularla de una manera adecuada somos más convincentes.
5. Analizar cuánto tiempo escuchamos y cuanto tiempo somos escuchados para aumentar la receptividad y el impacto.
6. Identificar cuánto, cómo, cuando y donde intervenimos, además observar la calidad de nuestras intervenciones en las conversaciones.
Comunicación asertiva en la conducta no verbal
En este estilo, la conducta no verbal que adoptemos va a influir mucho en la forma en la que el cliente va a recibir la información.
Para ello, es muy importante mantener el contacto visual directo con el cliente, tener una postura erguida y no mostrarnos tensos.
Mostrar seguridad con nuestro cuerpo a la vez que damos el mensaje y no parecer agresivos facilitará que consigamos que el cliente nos dé toda su atención y acepte la información.

Comunicación asertiva en la conducta verbal
Para que nuestra comunicación verbal sea coherente con nuestra comunicación no verbal es importante analizar las siguientes recomendaciones:
1. Cuando estemos en una conversación evitar cruzar los brazos, procurar estar en una posición de apertura.
2. No interpretar los gestos o movimientos de nuestro interlocutor, es preferible que indaguemos antes de suponer.
3. Observar nuestro tono de voz; si este es coherente con el mensaje.
4. Mantener el contacto visual de una manera muy sutil, mientras escuchamos y mientras hablamos, esto denota interés y fortalece las relaciones, ya que demuestra empatía.

Comunicación asertiva en la conducta paraverbal
Entre las características de las conductas paraverbales recomendables que se deben usar en nuestro mensaje son; un tono de voz calmada y constante, respetar los silencios y tener un ritmo constante durante todo el proceso.
Una de las cosas que puede señalar falta de seguridad e incluso nerviosismo es no respetar los silencios que durante la comunicación deben aparecer. No dejar de hablar, mostrarnos incómodos si hay un silencio, y ejecutar con rapidez, hará que el cliente pueda dudar de la realidad que le intentamos mostrar.
Técnicas de comunicación asertiva
A continuación tratamos 7 técnicas de comunicación asertiva, explicando en qué consiste cada una de ellas. Se incluyen ejemplos con diálogos de comunicación asertiva de situaciones concretas.
1. Técnica del disco rayado
La técnica del disco rayado consiste en repetir varias veces una afirmación sin modificar ni nuestro tono, ritmo y volumen, y sin intención de entrar en ninguna confrontación.

Comunicación asertiva en la conducta paraverbal
Entre las características de las conductas paraverbales recomendables que se deben usar en nuestro mensaje son; un tono de voz calmada y constante, respetar los silencios y tener un ritmo constante durante todo el proceso.
Una de las cosas que puede señalar falta de seguridad e incluso nerviosismo es no respetar los silencios que durante la comunicación deben aparecer. No dejar de hablar, mostrarnos incómodos si hay un silencio, y ejecutar con rapidez, hará que el cliente pueda dudar de la realidad que le intentamos mostrar.
Técnicas de comunicación asertiva
A continuación tratamos 7 técnicas de comunicación asertiva, explicando en qué consiste cada una de ellas. Se incluyen ejemplos con diálogos de comunicación asertiva de situaciones concretas.
1. Técnica del disco rayado
La técnica del disco rayado consiste en repetir varias veces una afirmación sin modificar ni nuestro tono, ritmo y volumen, y sin intención de entrar en ninguna confrontación.

3. Técnica para el cambio
Con esta técnica se intenta dar una visión global de la discusión relativizándola para reducir el nivel de agresividad y/o frustración.

4. Técnica del acuerdo asertivo
En este caso se intenta llegar a un acuerdo donde se confirma lo que se pueda considerar como error, pero dando como fundamento que en general, no es lo habitual.
5. Técnica de la pregunta asertiva
Es contestar a nuestro receptor con una pregunta que pone en positivo lo que se está discutiendo dando además al cliente la oportunidad de afrontar en el mismo sentido la crítica o dificultad que nos haya planteado.
6. Técnica de ignorar
Esta técnica se suele usar cuando en la llamada, el cliente, se muestra muy alterado o enfadado y es complicado mantener una conversación constructiva. En estos momentos tenemos que ser los más empáticos posibles para no despertar ninguna impresión de agresión.
7. Técnica del aplazamiento asertivo
Esta técnica la usamos cuando no somos capaces en ese momento de dar una solución o respuesta adecuada a la reclamación que nos hace el cliente. Se puede compaginar con la técnica del banco de niebla, si el cliente insiste mucho.

Conductas que ayudan a la comunicación activa y empática
Escuchar de forma activa, implica captar la totalidad del mensaje de nuestro interlocutor e interpretarlo desde el punto de vista de este.

Respuestas mínimas
Basta una palabra para mostrar al interlocutor que se tiene interés en la conversación y nos gustaría que continuase.

Reflejo de los sentimientos
Para indicar interés y atención resulta imprescindible reflejar los sentimientos que ha expresado la persona. A veces, las personas describen solamente acciones y a través de ellas debemos identificar sentimientos para reformular el diálogo.

Solicitud de aclaraciones
Pedir aclaraciones, ayuda a identificar y comprender el significado de las palabras, a la vez que indica al interlocutor que se está tratando de comprender su punto de vista.

Repetición de palabras o frases claves
En ocasiones también es útil repetir palabras o frases claves que ha utilizado la persona, en particular si ha expresado varias cuestiones a la vez, siendo útil captar la frase clave, lo que ayuda a conservar la conversación sobre los asuntos que preocupan al cliente.

Preguntas o afirmaciones con respuesta abierta
Lo que propicia la oportunidad de continuar la conversación. Si se desea obtener más información sobre un tema específico suele ser útil repetir la frase clave dándole a la persona oportunidad para comentar más.

Análisis de soluciones
En ocasiones, es adecuado ayudar al análisis de posibilidades respecto a la solución de los problemas identificados, dándose cuenta de algunos factores de la situación que no han sido mencionados, incluyéndolos en sus comentarios o preguntas pero teniendo cuidado de no opinar sobre lo que debe hacer. Se trata de ayudarlo a considerar los factores y posibilidades diversas que no se hayan tenido en cuenta.

**Herramientas para la búsqueda de trabajo en relación de dependencia**

![image](https://user-images.githubusercontent.com/106411071/174887002-bf9c7a90-0924-4eb4-81e6-6ce4fbd2d7cf.png)

![image](https://user-images.githubusercontent.com/106411071/174887186-f05487ce-8bd0-411a-ab26-9b109b4d1bf3.png)
1e9d61b15ba4.png)

**Curriculum vitae**

El currículum vitae o CV es tu herramienta de presentación. Tiene que ser claro, convincente y despertar el interés de quien lo lee. La información que incluyas es clave para dar a conocer tus aptitudes, experiencias, cualidades e intereses.

Definí tu perfil

Para identificar qué tipo de trabajo querés buscar, es importante que reconozcas tus intereses, habilidades y experiencias.

Estas preguntas te pueden servir de ayuda:

·         ¿Para qué soy bueno y para qué no?

·         ¿Qué actividades me resultan fáciles y cuáles me cuestan más?

·         ¿Qué conocimientos y/o habilidades tengo?

·         ¿Dónde los aprendí?

·         ¿Qué estoy estudiando?

·         ¿Cuál es mi experiencia?

·         ¿Qué ventajas puedo ofrecerle a un empleador?

·         ¿Qué me gusta hacer?

·         ¿Qué no me gusta hacer

Datos personales:

·         Nombre y apellido.

·         Número de documento.

·         Fecha de nacimiento.

·         Estado civil.

·         Nacionalidad.

·         Información de contacto: dirección, teléfono y correo electrónico.

Experiencia laboral

Si estás buscando tu primer trabajo, para completar esta sección de tu CV tené en cuenta:

·         Pasantías, becas u otras formas que combinan los estudios con el trabajo.

·         Prácticas remuneradas.

·         Trabajos voluntarios en el barrio, parroquia, club u otra institución.

·         Colaboraciones en comercios o trabajos para familiares, conocidos o vecinos.

Si tenés experiencia laboral, detallá tus empleos anteriores. Es importante que sobre cada uno de ellos indiques:

·         Nombre y rubro de la empresa o del empleador.

·         Puesto ocupado.

·         Año de ingreso y egreso.

·         Breve punteo de las tareas desempeñadas.

·         Formación académica

Mencioná tus estudios, tanto los que están en curso como los que hayas terminado. Acordate de incluir la siguiente información:

·         Título obtenido o estudios en curso.

·         Nombre de la institución educativa.

·         Año de graduación o último año de cursada.

·         Formación complementaria

También podés hacer referencia a otros cursos realizados, independientemente de los estudios académicos, que puedan resultar de interés para el puesto. Detallá:

·         Nombre del curso.

·         Institución donde lo hiciste.

·         Año de cursada.

·         Estado: en curso, finalizado, abandonado.

·         Idiomas / Informática

En estas dos secciones simplemente tenés que mencionar el idioma o programa que manejes y el nivel de conocimiento (básico, intermedio o avanzado).

Intereses personales

Esta sección es opcional y sirve para indicar intereses personales y actividades recreativas.

**Modelos de currículum**

1 - Cronológico: los datos se ordenan de manera temporal. Primero va lo más actual, para

que quien los lea pueda ver rápidamente tu trayectoria y tu progreso.

2 - Funcional: se pone foco y se agrupa la información en los conocimientos adquiridos, funciones, tareas desempeñadas y no tanto en la experiencia laboral reciente.
Evitá estos errores:

·         Abundancia de datos secundarios: por ejemplo, los datos personales de tu núcleo familiar.

·         Imprecisiones en la información: poner “varios cursos de actualización”, sin especificar detalles.

·         Uso innecesario de términos extranjeros, cuando existen palabras equivalentes en castellano.

·         Usar una foto grande e informal: debe ser tamaño carnet y formal.

·         Usar direcciones de correo electrónico con seudónimos: tiene que tener tu nombre y/o tu apellido. Si no es así, es mejor que te hagas uno nuevo.

·         Extenderse más de dos carillas: el CV tiene que ser corto y concreto.

**Conocé el mercado laboral**

El mundo del trabajo está cambiando y conocer las características del mercado laboral te va a permitir orientar mejor la búsqueda. Es importante que tengas en cuenta cuáles son los empleos que tienen más demanda, qué buscan los empleadores a la hora de contratar personal y para qué hay que estar preparado o ser competente.

**Entrevista laboral**

La finalidad principal de una entrevista de selección es determinar la adecuación de un candidato a una vacante específica dentro de una empresa determinada.

Los objetivos del entrevistador son:

• Conocer al candidato.

• Probar sus actitudes personales.

• Verificar la personalidad y compatibilidad con el ambiente de trabajo

• Evaluar las competencias del candidato para el desarrollo eficaz del puesto.

• Transmitir una imagen adecuada de la empresa e informar al candidato sobre la


empresa y el puesto.

Los objetivos del entrevistado son:

• Mostrar que nuestro perfil profesional y personal se adecua al del puesto

ofertado.

• Demostrar su competencia laboral para el puesto, su interés en el mismo: sabe,

quiere y puede desempeñar el puesto de trabajo.

• Causar una impresión positiva.


• Transmitir la información que nos solicitan de manera positiva y sincera

FASES DE LA ENTREVISTA

1. Fase inicial: el saludo y la presentación.
2. Cuerpo central de la entrevista: se explorará el área educacional, historial profesional, competencias, motivaciones.
3. Fase de cierre: el entrevistado debe hacer alguna pregunta al entrevistador que denote interés por el trabajo y la empresa, motivación iniciativa y seguridad.

**Tipos de entrevista**

Pueden ser individuales, grupales, presenciales o telefónicas. La más tradicional y frecuente es la individual, en la que el entrevistador va a profundizar sobre ciertos aspectos de tu CV. 

 **Comunicación verbal**
• Cuida la comunicación verbal.
• Cuida que el lenguaje sea culto y adaptado al puesto de trabajo.
• Evita palabras con connotación negativa.
• Emplea frases cortas y verbos de acción, un lenguaje directo hará que el entrevistador no necesite un exceso de concentración para entender.
• Expresa seguridad: “Estoy seguro/a….”, “sabré estar a la altura…”
• Expresa motivación y entusiasmo: “Estoy muy interesado/a…”,”Estoy muy ilusionado/a con la posibilidad de …”
• Expresa logros; “Estuve responsabilizado/a de …”, “Aquello me ha ayudado a conseguir…”
• Sé sincero para no caer en contradicciones.

PREGUNTAS MÁS FRECUENTES EN ENTREVISTA DE TRABAJO

Sobre el motivo de la solicitud:

El candidato busca el puesto por unas razones determinadas y el entrevistador intentará averiguar si dichas razones son las más adecuadas.


**El trabajo como profesional independiente**

En esta sociedad pos-moderna y pos-industrial, con nuevos roles para los trabajadores, no solo hay que proporcionar tiempo y dedicación a la tarea específica en sí, sino también considerar su capacitación, actualización y profesionalización, hasta llegar a prever su reconversión o redireccionalización. La globalización económica, la intensificación de la competencia internacional, la variabilidad y diversificación de la demanda y la introducción de nuevas tecnologías se están traduciendo en cambios en los procesos productivos, en las políticas de gestión empresarial y en las estructuras ocupacionales. Las innovaciones tecnológicas implican la aparición de nuevas actividades, pero también la caída y crisis de otras. Las constantes variaciones en la composición de la demanda de trabajo plantean la necesidad de incesantes y no raras veces penosas readaptaciones de la oferta de trabajo, con los consecuentes períodos de desocupación.
Esta nueva instancia de aprendizaje, concebida como una “educación para el trabajo” con más conocimientos, competencias, predisposiciones y actitudes que tienden a la ‘polivalencia’, no solamente comprende un aspecto tecnológico, sino que también tiene un componente ético y solidario. En definitiva, la educación no solo es necesaria para conseguir un empleo, sino para comunicarse y participar en una sociedad en la que el otro, además de ser un compañero de labores, es también un semejante. Una educación que no solo fomenta la formación de la profesión, la técnica o el oficio, sino también -y fundamentalmente- el trabajo con el otro y para otros.

**Habilidades Blandas**

![image](https://user-images.githubusercontent.com/106411071/174889280-932d3a8e-a54c-4147-a551-bd1e11652305.png)

Las habilidades blandas son atributos personales, que se pueden aprender como cualquier otra habilidad.

Se pueden visualizar por ejemplo en la manera en que se soluciona un conflicto, el modo de relacionarse con el entorno y en las formas de organización, entre otras.

Algunas de las habilidades blandas TIC más solicitadas:

•          Ética

•          Responsabilidad

•          Empatía

•          Sociabilidad

•          Facilidad para la comunicación

•          Escucha activa

•          Trabajo en equipo

•          Adaptación al cambio

•          Creatividad

•          Capacidad para resolver problemas

•          Optimización del tiempo

•          Actitud positiva

•          Espíritu de servicio

•          Seguridad personal

•          Tolerancia a la presión

•          Asertividad

•          Respeto a las opiniones

Es importante desarrollar soluciones disruptivas que ayuden a superar las dificultades que se presenten y en donde todos saquen experiencias y se beneficien en materia de aprendizaje.
Otras habilidades importantes para desarrollar en el ámbito del teletrabajo son:

•          Habilidad para superar la complejidad y la ambigüedad.

•          Habilidad para liderar a través de la influencia.

•          Habilidad para gestionar a la distancia.

•          Habilidad para manejar equipos interculturales e intergeneracionales.

•          Habilidad para gestionar una fuerza laboral integrando máquinas y humanos.

•          Habilidad para poder dar respuestas rápidas, ágiles y asertivas.

