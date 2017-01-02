const VALUES: [i32; 8] = [200, 100, 50, 20, 10, 5, 2, 1];

fn sum(coins: &[i32; 8]) -> i32 {
    coins.iter().zip(VALUES.iter()).map(|(c, v)| c * v).sum()
}

fn main() {
    let mut combinations = 0;
    for c_200 in 0..2 {
        for c_100 in 0..3 {
            for c_50 in 0..5 {
                for c_20 in 0..11 {
                    for c_10 in 0..21 {
                        for c_5 in 0..41 {
                            for c_2 in 0..101 {
                                for c_1 in 0..201 {
                                    if sum(&[c_200, c_100, c_50, c_20, c_10, c_5, c_2, c_1]) == 200 {
                                        combinations += 1;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    println!("{}", combinations);
}

#[test]
fn test_sum() {
    let coins = [1, 0, 0, 0, 0, 0, 0, 0];
    assert_eq!(sum(&coins), 200);
}

