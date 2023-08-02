# Backpack Cryptography

## Description
I love this cryptosystem so much, I carry it everywhere in my backpack. To lighten the load, I make sure I don't pack anything with high densities.  
  
**Challenge files:**  
  - [source.py](https://cryptohack.org/static/challenges/source_83f1e856dc3e1d8c6628abb227a797cb.py)  
  - [output.txt](https://cryptohack.org/static/challenges/output_e2fe6134f7dd580dcedacdbe71846d0e.txt)

## Solution
Looking at the provided code, we find that the challenge is a knapsack cryptosystem. We are given the value $(b, r, q)$, the private keys and $a$, the public key to encrypt the message $m$ and decrypt the ciphertext $c$.

#### Private and Public Keypair Generation
First, we generate a *superincreasing*-sequence $B$, where for all values of $n$
$$
b_n > \sum_{i=1}^{n-1}{b_i}
$$

Then, we generate a prime $q$, where
$$
q > \sum_{i=1}^{n}{b_i} \quad\quad(1)
$$

and a value $r$, where
$$
gcd(q, r) = 1
$$

To generate the public key for each $a_i$,
$$
a_i \equiv rb_i\ (mod\ q)  \quad\quad(2)
$$

#### Encryption
To encrypt the message $M$ to $C$, the value of $n = 8 \times len(M)$ must be larger than the value of $B$. If so, we may proceed the encryption by first changing the message $M$ into the binary equivalent $m$, where $len(m) = n$.
$$
c_i = {a_i m_i}
$$

Where the value of ciphertext $C$ is
$$
C = \sum_{i = 1}^{n}{c_i}
$$
$$
C = \sum_{i = 1}^{n}{a_i m_i}  \quad\quad(3)
$$

#### Decryption
To decrypt the ciphertext $C$ back to the message $M$, we must first find the value of $C'$, where
$$
C' \equiv r^{-1}C \ (mod\ q) \quad\quad(4)
$$

Then, we need to solve the subset-sum problem from $C'$ using the  private key $B$. The algorithm are as follows
$Loop\ i\ from\ n\ down\ to\ 1$
	$If\ C'\ \geq\  b_i\ then\ set\ x_i = 1\ and\ subtract\ b_i\ from\ C'$
	$Else\ set\ x_i = 0$
$End\ Loop$

Which will give us the value of $x = m$.

#### Proof
We will now prove that $x = m$. This cryptosystem works by exploiting the mechanism of a superincreasing sequence, which can be proved that there exist only one solution $x$ for a message $M$ using a super-increasing sequence $B$. 

To prove the equality, we can substitute $(3)$ to $(4)$
$$
C' \equiv r^{-1}\sum_{i = 1}^{n}{a_i m_i}\ (mod\ q) \quad\quad(5)
$$

Then, we substitute $(2)$ to $(5)$
$$
C' \equiv r^{-1}\sum_{i=1}^{n}r b_i m_i\ (mod\ q)
$$
$$
C' \equiv \sum_{i=1}^{n} b_i m_i\ (mod\ q) \quad\quad (6)
$$

Using the property $(2)$, we can prove that
$$
\sum_{i=1}^{n}{m_ib_i} \leq \sum_{i=1}^{n}{b_i} < q
$$

Which makes $(6)$
$$
C' = \sum_{i=1}^{n}b_i m_i
$$

#### Attack
To attack this cryptosystem, we are tasked to find the value of $m_i$ from the available public key $A$. To do this, we need to construct a matrix
$$
\begin{pmatrix}
2 & 0 & 0 & ... & 0 & a_1 \\
0 & 2 & 0 & ... & 0 & a_2 \\
0 & 0 & 2 & ... & 0 & a_3 \\
. & . & . & ... & . & . \\
0 & 0 & 0 & ... & 2 & a_n \\
1 & 1 & 1 & ... & 1 & S
\end{pmatrix}
$$

with the relevant vectors $v_1, v_2, v_3, ..., v_n$ are the rows of the matrix. Then, we will find the set of all *integers* linear combinations, 
$$
L = \{a_1v_1 + a_2v_2 + ... + a_nv_n + a_{n+1}v_{n+1}\ |\ a_1, a_2, ..., a_{n+1} \in \mathbb{Z} \}
$$

which is a lattice. Since the lattice $L$ contains the solution of the problem, then there exists a vector $t$, where
$$
t = \sum_{i=1}^{n}m_iv_i - v_{n+1} = (2m_1-1, 2m_2-1, ..., 2m_n-1, 0)
$$

Finally, since the value of $m$ are either 1 or 0, then we just need to check the value in L where all the values are either 1 or -1.

#### Solving the Challenge

## Flag
```txt
flag{th15_i5_th3_fl49}
```
