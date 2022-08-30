/*
 * Reto #35
 * BATALLA POKÉMON
 * Fecha publicación enunciado: 29/08/22
 * Fecha publicación resolución: 06/09/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que calcule el daño de un ataque durante una batalla Pokémon.
 * - La fórmula será la siguiente: daño = 50 * (ataque / defensa) * efectividad
 * - Efectividad: x2 (súper efectivo), x1 (neutral), x0.5 (no es muy efectivo)
 * - Sólo hay 4 tipos de Pokémon: Agua, Fuego, Planta y Eléctrico (buscar su efectividad)
 * -- De acuerdo con https://pokemon.fandom.com/es/wiki/Tipos_elementales (Efectivdades de los tipos)
 * --- Agua: vs Agua (0.5)  | vs Fuego (0.5) | vs Eléctrico (0.5) | vs Planta (1)
 * --- Fuego: vs Agua (0.5)  | vs Fuego (0.5) | vs Eléctrico (1) | vs Planta (2) 
 * --- Planta: vs Agua (2)  | vs Fuego (0.5) | vs Eléctrico (1) | vs Planta (0.5)
 * --- Eléctrico: vs Agua (2)  | vs Fuego (1) | vs Eléctrico (0.5) | vs Planta (0.5)
 * - El programa recibe los siguientes parámetros:
 *  - Tipo del Pokémon atacante.
 *  - Tipo del Pokémon defensor.
 *  - Ataque: Entre 1 y 100.
 *  - Defensa: Entre 1 y 100.
 *
 *
 */