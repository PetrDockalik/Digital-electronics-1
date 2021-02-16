# Laboratory 2: Combinational logics

More information on [GitHub Tomáš Frýza](https://github.com/tomas-fryza/Digital-electronics-1/tree/master/Labs/02-logic)

[My GitHub](https://github.com/PetrDockalik/Digital-electronics-1)

## Preparation of Laboratory

| **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 0 | 0 0 | 0 | 1 | 0 |
| 1 | 0 0 | 0 1 | 0 | 0 | 1 |
| 2 | 0 0 | 1 0 | 0 | 0 | 1 |
| 3 | 0 0 | 1 1 | 0 | 0 | 1 |
| 4 | 0 1 | 0 0 | 1 | 0 | 0 |
| 5 | 0 1 | 0 1 | 0 | 1 | 0 |
| 6 | 0 1 | 1 0 | 0 | 0 | 1 |
| 7 | 0 1 | 1 1 | 0 | 0 | 1 |
| 8 | 1 0 | 0 0 | 1 | 0 | 0 |
| 9 | 1 0 | 0 1 | 1 | 0 | 0 |
| 10 | 1 0 | 1 0 | 0 | 1 | 0 |
| 11 | 1 0 | 1 1 | 0 | 0 | 1 |
| 12 | 1 1 | 0 0 | 1 | 0 | 0 |
| 13 | 1 1 | 0 1 | 1 | 0 | 0 |
| 14 | 1 1 | 1 0 | 1 | 0 | 0 |
| 15 | 1 1 | 1 1 | 0 | 1 | 0 |

[Map solution](http://www.32x8.com/var4.html)

![and_gates](Images/Kaurgnahova1.jpg)

![and_gates](Images/Kaurgnahova2.jpg)

![and_gates](Images/LateXVzorce.png)

```
SoP _{equals} = \overline{a_{0}}\cdot \overline{a_{1}}\cdot \overline{b_{0}}\cdot \overline{b_{1}}\ +a_{0}\cdot \overline{a_{1}}\cdot b_{0}\cdot \overline{b_{1}}\ +a_{0}\cdot a_{1}\cdot b_{0}\cdot b_{1}\ +\overline{a_{0}}\cdot a_{1}\cdot \overline{b_{0}}\cdot b_{1}\\
PoS _{less} = (b_{1}+b_{0})\cdot (\overline{a_{0}}+\overline{a_{1}})\cdot (b_{0}+\overline{a_{1}})\cdot (b_{1}+\overline{a_{1}})\cdot (b_{1}+\overline{a_{0}})
```

## Description of laboratory

