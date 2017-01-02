fn main() {
    let mut combinations = 0;
    let target = 200;

    for c_200 in 0..(target/200)+1 {
        let current_sum = c_200 * 200;
        for c_100 in 0..(target-current_sum)/100+1 {
            let current_sum = current_sum + c_100 * 100;
            for c_50 in 0..(target-current_sum)/50+1 {
                let current_sum = current_sum + c_50*50;
                for c_20 in 0..(target-current_sum)/20+1 {
                    let current_sum = current_sum + c_20*20;
                    for c_10 in 0..(target-current_sum)/10+1 {
                        let current_sum = current_sum + c_10*10;
                        for c_5 in 0..(target-current_sum)/5+1 {
                            let current_sum = current_sum + c_5*5;
                            for c_2 in 0..(target-current_sum)/2+1 {
                                let current_sum = current_sum + c_2*2;
                                for c_1 in 0..(target-current_sum)+1 {
                                    if current_sum + c_1 == 200 {
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

