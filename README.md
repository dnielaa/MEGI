# MEGI
En este repositorio se publicará la solución al siguiente problema de Investigación Operativa sobre un escenario ficticio.
# Caso práctico: Optimización y rediseño de la cadena de suministro

## 1. Descripción general del problema

Una empresa petroquímica produce **gasolina, gas‑oil y queroseno** para venderlos en cuatro mercados:

* España
* Portugal
* Francia
* Norte de África

La materia prima es **petróleo crudo**, que se compra a cuatro suministradores (A, B, C y D). Cada barril contiene 159 litros. Los precios de compra por barril son:

* A: 47 €
* B: 49 €
* C: 53 €
* D: 51 €

La empresa dispone de **tres refinerías** desde las que puede atender los mercados y recibir petróleo de los suministradores.

## 2. Rendimientos de producción por barril

De un barril de petróleo crudo se obtienen (en litros):

| Suministrador | Gasolina | Gas‑oil | Queroseno |
| ------------- | -------: | ------: | --------: |
| A             |       72 |      35 |        10 |
| B             |       80 |      37 |        12 |
| C             |       69 |      50 |         8 |
| D             |       80 |      20 |        15 |

## 3. Costes de transporte del petróleo a refinerías (€ por barril)

| Suministrador | Refinería 1 | Refinería 2 | Refinería 3 |
| ------------- | ----------: | ----------: | ----------: |
| A             |         0.4 |         0.3 |         0.3 |
| B             |         0.4 |         0.4 |         0.4 |
| C             |         0.2 |         0.5 |         0.4 |
| D             |         0.4 |         0.3 |         0.2 |

## 4. Demanda de productos (millones de litros)

| Producto  | España | Portugal | Francia | Norte de África |
| --------- | -----: | -------: | ------: | --------------: |
| Gasolina  |     20 |       10 |      10 |              25 |
| Gas‑oil   |     15 |        6 |       8 |              10 |
| Queroseno |     10 |        3 |       4 |              12 |

## 5. Ingresos netos por litro vendido (€)

| Producto  | España | Portugal | Francia | Norte de África |
| --------- | -----: | -------: | ------: | --------------: |
| Gasolina  |   0.50 |     0.45 |    0.60 |            0.55 |
| Gas‑oil   |   0.45 |     0.55 |    0.45 |            0.35 |
| Queroseno |   0.15 |     0.10 |    0.15 |            0.12 |

## 6. Costes de manipulación en refinería (€ por litro producido)

| Producto  | Refinería 1 | Refinería 2 | Refinería 3 |
| --------- | ----------: | ----------: | ----------: |
| Gasolina  |       0.021 |       0.011 |       0.013 |
| Gas‑oil   |       0.015 |       0.062 |       0.082 |
| Queroseno |       0.010 |       0.033 |       0.041 |

## 7. Restricciones de compra (Caso 7.2 – situación inicial)

Para cada suministrador seleccionado:

* **Mínimo:** 100 000 barriles diarios
* **Máximo:** 500 000 barriles diarios
* El petróleo puede destinarse a cualquiera de las refinerías.

## 8. Objetivo de optimización (Fase 1)

Determinar el plan óptimo que **maximiza el beneficio total**, respondiendo a:

1. Qué cantidad comprar a cada suministrador.
2. Qué cantidad enviar desde cada suministrador a cada refinería.
3. Qué cantidad vender de cada producto final y el beneficio obtenido.

El modelo debe incluir:

* Variables de decisión continuas.
* Función objetivo de beneficio.
* Restricciones de balance de materia, capacidad y demanda.

## 9. Segundo caso práctico – Rediseño de la cadena (Fase 2)

La empresa decide simplificar su red cerrando una refinería y operando solo con **dos refinerías**.

### Nuevas condiciones:

* Cada refinería abierta debe atender **entre 2 y 3 mercados**.
* Cada refinería debe comprar a **entre 2 y 3 suministradores**.
* Costes fijos de funcionamiento:

  * Refinería 1: 0.50 M€
  * Refinería 2: 0.70 M€
  * Refinería 3: 0.75 M€
* Penalización: Si la refinería 1 sirve **tres productos distintos al mercado portugués**, paga 100 000 €.
* No es obligatorio comprar a los cuatro suministradores.
* Si un suministrador es seleccionado, su aporte debe ser **entre el 20% y el 60%** del total comprado por todas las refinerías.

### Resultado esperado (Fase 2)

Construir un nuevo modelo de optimización con **variables binarias** que decida:

* Qué refinerías se abren.
* Qué suministradores se utilizan.
* Qué suministradores sirven a cada refinería.
* Qué mercados y productos atiende cada refinería.

Y documentar la cadena resultante describiendo:

* Refinerías y suministradores activos.
* Asignaciones proveedor–refinería.
* Mercados atendidos por cada refinería.
* Productos servidos en cada mercado.


