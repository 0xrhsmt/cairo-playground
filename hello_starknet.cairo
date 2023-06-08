#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;

    #[event]
    fn Hello_Tokyo_Japan(from:ContractAddress, value:felt252) {}

    #[external]
    fn say_hello(message:felt252) {
        let caller=get_caller_address();
        Hello_Tokyo_Japan(caller, message);
    }
}
