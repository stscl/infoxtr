# Information Imbalance and Imbalance Gain

## Introduction

### Imbalance Gain

The **Imbalance Gain (IG)** quantifies the information imbalance that a
variable \\X\\ provides about the future state of another variable
\\Y\\. To assess the information transfer \\X \rightarrow Y\\, IG
compares the neighborhood structure of the future state of \\Y\\ with
that of an augmented present state containing both \\X\\ and \\Y\\.

The basic quantity is the **Information Imbalance** between two distance
spaces \\A\\ and \\B\\:

\\ \Delta(A \rightarrow B) = \frac{2}{N} \left\langle r^B \mid r^A \leq
k \right\rangle, \\

where \\r^A\\ and \\r^B\\ are the distance ranks in spaces \\A\\ and
\\B\\, respectively, and \\k\\ is the number of nearest neighbors
considered. A small \\\Delta(A\rightarrow B)\\ indicates that points
close in \\A\\ also tend to be close in \\B\\. The distance rank in one
space therefore provides information about the structure of another
space.

For \\X \rightarrow Y\\, let \\d_Y(0)\\ denote the distance space
constructed from the present state of \\Y\\, and let
\\d\_{XY}^{\alpha}(0)\\ denote the corresponding space after
incorporating \\X\\ with a relative scaling parameter \\\alpha\\. The
future state of \\Y\\ is represented by \\d_Y(\tau)\\, where \\\tau\\ is
the prediction horizon. The Imbalance Gain evaluates

\\ \Delta(\alpha) = \Delta \left(d\_{XY}^{\alpha}(0) \rightarrow
d_Y(\tau) \right). \\

If \\X\\ contains information about the future of \\Y\\, adding \\X\\
should reduce the Information Imbalance. The resulting **Imbalance
Gain** is

\\ \delta\Delta(X \rightarrow Y) = 1 -
\frac{\min\_{\alpha}\Delta(\alpha)}{\Delta(0)}. \\

Here, \\\Delta(0)\\ represents prediction using \\Y\\ alone, whereas
\\\min\_{\alpha}\Delta(\alpha)\\ represents the best prediction obtained
after incorporating information from \\X\\. \\\delta\Delta(X \rightarrow
Y)=0\\ indicates no gain from adding \\X\\, while a positive value
indicates that \\X\\ provides additional information about the future
state of \\Y\\.

The same calculation can be performed in the opposite direction,
\\Y\rightarrow X\\, allowing directional information transfer to be
assessed for both directions.

### Conditional Imbalance Gain

The **Conditional Imbalance Gain (CIG)** extends the Imbalance Gain to
assess the additional information provided by \\X\\ about the future
state of \\Y\\ conditional on a third variable \\Z\\. The present state
of \\Z\\ is incorporated into the baseline prediction, and the
contribution of \\X\\ is evaluated relative to this baseline.

Let \\d\_{YZ}^{\alpha_Z}(0)\\ denote the distance space constructed from
the present states of \\Y\\ and \\Z\\, with \\\alpha_Z\\ controlling the
relative scaling of \\Z\\. After incorporating \\X\\ with scaling
parameter \\\alpha_X\\, the augmented distance space is denoted by
\\d\_{XYZ}^{\alpha_X,\alpha_Z}(0)\\. The Conditional Imbalance Gain is
defined as

\\ \delta \Delta (X \rightarrow Y \mid Z) = 1- \frac{
\min\limits\_{\alpha_X,\alpha_Z} \Delta \left(
d\_{XYZ}^{\alpha_X,\alpha_Z}(0) \rightarrow d_Y(\tau) \right)}
{\min\limits\_{\alpha_Z} \Delta \left(d\_{YZ}^{\alpha_Z}(0) \rightarrow
d_Y(\tau) \right)}. \\

The denominator represents the best prediction of the future state of
\\Y\\ using \\Y\\ and \\Z\\ at the present state. The numerator
represents the best prediction after additionally incorporating \\X\\. A
positive \\\delta\Delta(X\rightarrow Y\mid Z)\\ indicates that \\X\\
provides additional predictive information about the future state of
\\Y\\ beyond that contained in \\Y\\ and \\Z\\.

For a fixed \\\alpha_X\\, the corresponding conditional Imbalance Gain
is

\\ \delta \Delta(X\rightarrow Y\mid Z;\alpha_X) = 1- \frac{
\min\limits\_{\alpha_Z} \Delta \left(d\_{XYZ}^{\alpha_X,\alpha_Z}(0)
\rightarrow d_Y(\tau) \right)} {\min\limits\_{\alpha_Z} \Delta \left(
d\_{YZ}^{\alpha_Z}(0) \rightarrow d_Y(\tau) \right)}. \\

The optimal \\\alpha_X\\ can then be obtained by minimizing the
conditional Information Imbalance over the range of \\\alpha_X\\. The
same formulation can be applied in the reverse direction to assess
\\Y\rightarrow X\mid Z\\.

## Example Cases
