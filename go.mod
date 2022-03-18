module github.com/ZentriaMC/elrond-keygen

go 1.17

require (
	github.com/ElrondNetwork/elrond-go-core v1.1.14
	github.com/ElrondNetwork/elrond-go-crypto v1.0.1
	github.com/ElrondNetwork/elrond-go-logger v1.0.6
	github.com/urfave/cli v1.22.5
)

require (
	github.com/btcsuite/btcutil v1.0.2 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d // indirect
	github.com/denisbrodbeck/machineid v1.0.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/herumi/bls-go-binary v1.0.0 // indirect
	github.com/mr-tron/base58 v1.2.0 // indirect
	github.com/pelletier/go-toml v1.9.3 // indirect
	github.com/russross/blackfriday/v2 v2.0.1 // indirect
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1 // indirect
	google.golang.org/protobuf v1.26.0 // indirect
)

// Fixes aarch64-darwin support
replace github.com/herumi/bls-go-binary => github.com/herumi/bls-go-binary v1.0.1-0.20220103075647-4e46f4fe2af2
