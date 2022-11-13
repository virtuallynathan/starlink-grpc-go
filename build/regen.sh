#/bin/bash

protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/device.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/common/status/status.proto  --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/command.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/common.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/dish.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/dish_config.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/wifi.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/wifi_config.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go
protoc --go_out=pkg/    --go-grpc_out=pkg/  --descriptor_set_in=proto/dish.protoset spacex/api/device/transceiver.proto --go_opt=Mproto/dish.protoset=github.com/virtuallynathan/starlink-grpc-go

find pkg/spacex.com -name "*.go" | xargs sed -i.bak 's|spacex.com/api|github.com/virtuallynathan/starlink-grpc-go/pkg/spacex.com/api|g'
find pkg/spacex.com -name "*.bak" | xargs rm

