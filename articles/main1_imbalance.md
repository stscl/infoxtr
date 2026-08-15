# Information Imbalance Gain (IIG)

## Introduction

The Information Imbalance Gain (IIG) quantifies the information that a
variable \\X\\ provides about the future state of another variable
\\Y\\. To test the causation \\X \rightarrow Y\\, IIG compares the
neighborhood structure of the future state of \\Y\\ with that of an
augmented present state containing both \\X\\ and \\Y\\.

The basic quantity is the **Information Imbalance** between two distance
spaces \\A\\ and \\B\\:

\\ \Delta(A \rightarrow B) = \frac{2}{N} \left\langle r^B \mid r^A \leq
k \right\rangle, \\

where \\r^A\\ and \\r^B\\ are the distance ranks in spaces \\A\\ and
\\B\\, respectively, and \\k\\ is the number of nearest neighbors
considered. A small \\\Delta(A\rightarrow B)\\ indicates that points
close in \\A\\ also tend to be close in \\B\\. Thus, the distance rank
in one space provides information about the structure of another space.

For \\X \rightarrow Y\\, let \\d_Y(0)\\ denote the distance space
constructed from the present state of \\Y\\, and let
\\d\_{XY}^{\alpha}(0)\\ denote the corresponding space after
incorporating \\X\\ with a relative scaling parameter \\\alpha\\. The
future state of \\Y\\ is represented by \\d_Y(\tau)\\, where \\\tau\\ is
the prediction horizon. IIG therefore evaluates

\\ \Delta(\alpha) = \Delta \left( d\_{XY}^{\alpha}(0) \rightarrow
d_Y(\tau) \right). \\

If \\X\\ contains information about the future of \\Y\\, adding \\X\\
should reduce the Information Imbalance. The resulting **Imbalance
Gain** is

\\ \mathrm{IIG}(X\rightarrow Y) = \frac{
\Delta(0)-\min\_{\alpha}\Delta(\alpha) }{ \Delta(0) }. \\

Here, \\\Delta(0)\\ represents prediction using \\Y\\ alone, whereas
\\\min\_{\alpha}\Delta(\alpha)\\ represents the best prediction obtained
after incorporating information from \\X\\. Consequently,
\\\mathrm{IIG}(X\rightarrow Y)=0\\ indicates no gain from adding \\X\\,
while a positive value indicates that \\X\\ provides additional
information about the future state of \\Y\\.

The same calculation can be performed in the opposite direction,
\\Y\rightarrow X\\, allowing directional information transfer to be
assessed for both directions.

## Example Cases
