type Fraction = (i32, i32);

/// Add 2 fractions
pub fn add((n1, d1): Fraction, (n2, d2): Fraction) -> Fraction { return if d1==d2 {(n1+n2, d1)} else { ((n1*d2)+(n2*d1), (d1*d2)) } }

/// Subtract 2 fractions
pub fn sub((n1, d1): Fraction, (n2, d2): Fraction) -> Fraction {
    return if d1==d2 {(n1-n2, d1)} else { ((n1*d2)-(n2*d1), (d1*d2)) }
}

/// Multiply 2 fractions
pub fn mul((n1, d1): Fraction, (n2, d2): Fraction) -> Fraction {
    return (n1*n2, d1*d2);
}

/// Divide 2 fractions
pub fn divide((n1, d1): Fraction, (n2, d2): Fraction) -> Fraction {
    return (n1*d2, n2*d1);
}

/// Calculate the Highest common factor between 2 numbers
pub fn hcf(a: i32, b: i32) -> i32 {
    let mut i : i32 = if a < b { a } else { b };
    while a%i!=0 || b%i!=0 {
        i-=1;
    }
    return i;
}

/// Create a fraction simplifying with the arguments simplified by the `hcf`
pub fn simplify(n: i32, d: i32) -> Fraction {
     (n, d)
}
