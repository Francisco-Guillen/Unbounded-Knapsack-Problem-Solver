# Maximum Profit Cake Cutter

This OCaml program efficiently calculates the maximum profit achievable by cutting a cake into slices and selling them. It implements a dynamic programming approach, utilizing memoization to optimize performance.

## Overview

The `max_lucro` function in this program takes as input the total size of the cake `n` and a table of prices and slice sizes. It computes the maximum profit achievable by cutting the cake into slices and selling them. The program utilizes memoization to avoid redundant calculations, ensuring efficient computation even for large cake sizes and complex pricing structures.

## Features

- **Efficient Calculation**: Utilizes dynamic programming and memoization to efficiently compute the maximum profit.
- **Flexible Input**: Accepts input for the total size of the cake and the prices and sizes of individual slices, allowing for various scenarios and pricing structures.
- **Optimized Sorting**: Sorts the list of slice prices by the ratio of price to size, prioritizing slices with the best cost-benefit ratio for maximum efficiency.

## Usage

To use the program, follow these steps:

1. Input the total size of the cake `n`.
2. Input the number of slices and their respective sizes and prices.
3. The program will calculate and display the maximum profit achievable by cutting and selling the cake.

## Input Format

The input format consists of the following:
- The total size of the cake `n`.
- The number of slices `m`.
- For each slice:
  - Size of the slice.
  - Price of the slice.

## Bibliography

- [Memoization - CS 3110 Spring 2021](https://cs3110.github.io/textbook/chapters/ds/memoization.html)
- [GeeksforGeeks - Unbounded Knapsack (Repetition of items allowed)](https://www.geeksforgeeks.org/unbounded-knapsack-repetition-items-allowed/)
- [GeeksforGeeks - Greedy Algorithms](https://www.geeksforgeeks.org/greedy-algorithms/)

## Notes

This program is based on the unbounded knapsack problem, where items can be selected multiple times, and the objective is to maximize profit. It employs a greedy approach by sorting the slice prices by their cost-benefit ratio before computation.
