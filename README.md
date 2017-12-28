# Simplechain

Simple Blockchain implementation using Elixir lang.

## Usage

```elixir
block_0 = Simplechain.Block.first("First transaction")
# %Simplechain.Block{data: "First transaction",
#  hash: "1239e45997de1d7ba14759c2368fce410cd6b9c555a1f89f2943a6bfa55a4ef5",
#  index: 0,
#  previous_hash: "0",
#  timestamp: #DateTime<2017-12-28 21:56:20.767074Z>}

block_1 = Simplechain.Block.next(block_0, "Second transaction")
# %Simplechain.Block{data: "Second transaction",
#  hash: "123d0f6bbbe1ae57fc1cd751ad72d73477bf361feaa46c49bd62639657e0098e",
#  index: 1,
#  previous_hash: "1239e45997de1d7ba14759c2368fce410cd6b9c555a1f89f2943a6bfa55a4ef5",
#  timestamp: #DateTime<2017-12-28 21:58:09.977828Z>}

block_2 = Simplechain.Block.next(block_1, "Third transaction")
# %Simplechain.Block{data: "Third transaction",
# hash: "1233b724285cf03ee208999947b012efb393b510ffa1e94d0dc64247e93c41dc",
# index: 2,
# previous_hash: "123d0f6bbbe1ae57fc1cd751ad72d73477bf361feaa46c49bd62639657e0098e",
# timestamp: #DateTime<2017-12-28 21:59:46.376996Z>}
```
