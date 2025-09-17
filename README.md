[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/8C_btK1T)
# Arcana Magisterium
**El Magisterio de los Misterios** del latín Arcana Magisterium, es una prestigiosa y poderosa academina dedicada al estudio o la enseñanza de conocimientos ocultos y mágicos.

## Academina
Una prestigiosa academia llamada Arcana Magisterium está entrenando a su equipo para competir en el Gran Torneo Mágico.

Para unirse al equipo de la academia, el mago debe superar una evaluación que consiste en verificar que su energía mágica sea mayor a 40 y su poder igual o superior a 30. Si el mago pasa la evaluación, se suma al equipo; de lo contrario, queda en una lista de candidatos.

La academia solo puede entrenar a todos los magos del equipo, pero esto no impide que los magos candidatos puedan entrenarse de forma individual. Eventualmente, la academia puede volver a evaluarlos para unirse al equipo. Si un candidato logra ingresar, debe abandonar la lista de candidatos.

El poder total del equipo se calcula sumando el poder de cada mago. La academia también debe verificar que el equipo esté en condiciones óptimas, lo que significa que ningún mago debe tener una energía mágica menor a 45.

Además, se quiere conocer el delta de la energía, que se calcula como la diferencia en valor absoluto entre la energía del mago más poderoso y el del menos poderoso.

Por último tambien se desa conocer la lista de poderes de los magos cuya energía supera los 90 puntos de poder.

## Magos
Algunos de los magos que Arcana Magisterium puede reclutar son: Selene, Balthazar, Iris y Aldric.

Selene tiene inicialmente una energía mágica de 35, un poder de 60 y una habilidad especial llamada Luz Lunar (inicialmente desactivada). Esta habilidad solo puede alternarse, es decir, si está desactivada pasa a estar activada y viceversa. Cuando entrena sin estar potenciada, su energía mágica aumenta en 25; pero cuando está potenciada, su poder se duplica.

Balthazar tiene 450 horas de entrenamiento y nunca hizo hechizos dañinos aún. Su poder base se calcula como 35 menos el número de veces que ha usado hechizos dañinos, multiplicado por 3. Su poder magico es la cantidad de horas de entrenamiento dividido 10. Su entrenamiento consiste en entrenar 100 horas y hacer un hechizo dañino.

Iris siempre tiene una energía de 80 y un poder de 35. Pero como su especialidad es la salud, cuenta con una capacidad de sanación  que comienza en 2 y que cuando entrena aumenta en 1. Puede usar su poder de sanación en el Escudo Mágico de Arcana, que protege a la academia. Si su capacidad de sanación es un número impar, el escudo mejora en 150 su resistencia y en 100 su durabilidad; en caso contrario, el escudo mejora en 80 la resistencia y 60 la durabilidad por cada unidad de sanación.

El Escudo Mágico de Arcana tiene inicialmente una resistencia de 400 y 600 puntos de durabilidad. La durabilidad solo puede llegar a un valor máximo de 1000.

Aldric es un hechicero especializado en el uso de bastones: un Bastón de Fuego y un Bastón de Hielo. Su energía mágica se calcula como 65 más 20 unidades por la cantidad de entrenamientos. Inicialmente, su habilidad con bastones es de 30, pero cuando Aldric entrena, su habilidad se incrementa según el bastón que esté utilizando al momento de entrenar: El de Fuego le otorga 60 unidades, mientras que el de Hielo sólo 40. Aldric comienza con el Bastón de Hielo pero puede cambiar de bastón en cualquier momento. Su poder equivale a la mitad de su habilidad con bastones. 

## Casos de Prueba
La academia intenta reclutar a Aldric, pero no puede debido a su bajo poder, por lo que queda en la lista de candidatos.

En otro test, Aldric intenta unirse a la academia, y como no lo logra, cambia al Bastón de Fuego y entrena de forma individual. Luego, la academia vuelve a evaluar candidatos. Ahora Aldric entra al equipo.

Selene alterna Luz Lunar y entrena, lo que eleva su poder a 120. Si la academia la evaluara ahora, no podría unirse al equipo porque su energía sigue siendo 35.

En otro test, Selene solo entrena sin alternar la Luz Lunar y es evaluada por la academia. Esta vez podría unirse al equipo, ya que su energía sería de 60.

Balthazar puede ser reclutado al inicio, pero después de entrenar dos veces, su energía mágica aumenta a 65 y su poder baja a 29. En ese momento ya no puede ser reclutado.

Iris usa su poder de sanación en el Escudo Mágico de Arcana, mejorando su resistencia y durabilidad a 550 y 700, respectivamente. En otro test, entrena y vuelve a usar su sanación, dejando el escudo con 480 de resistencia y 760 de durabilidad.

## Mas Prubeas
- Reclutar a los 4 magos y comprobar que Balthazar e Iris permanecen en el equipo.
- Entrenar a Selene y Balthazar una vez, reclutar a los 4 magos y validar lo siguiente en el mismo test:
    - Selene también pertenece al equipo.
    - El poder total del equipo es igual a 127.
    - El delta de la energía es 20.
    - La academia está en condiciones óptimas.
