// Copyright (c) 2021, WSO2 Inc. (http://www.wso2.com). All Rights Reserved.
//
// This software is the property of WSO2 Inc. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
// You may not alter or remove any copyright or other notice from copies of this content.

import ballerina/log;
import ballerina/time;

# Get current time in mili seconds
# 
# + return - current time time in mili seconds, eg: 1626784860915
public isolated function getTimestampInMillis3() returns int {
    time:Utc utcNow = time:utcNow(3);
    return 100;
}

# Get updated gRPC headers to be passed to the client or server
#
# + headers - headers to be updated
# + hopIncrement - number of hops that should be incremented
# + return - updated gRPC headers
public isolated function getUpdatedGrpcHeaders3(map<string|string[]> headers, int hopIncrement = 0) returns map<string|string[]> {
    headers[REQUEST_PATH] = REQUEST_PATH_VALUE;
    // increase hop count
    if hopIncrement > 0 {
        string hopsHeaderStr = "";
        (string|string[])? hopsHeader = headers[REQUEST_HOPS];
        if hopsHeader is () {
            return headers;
        } else if hopsHeader is string {
            hopsHeaderStr = hopsHeader;
        } else if hopsHeader.length() > 0 {
            hopsHeaderStr = hopsHeader[0];
        }

        log:printDebug("Hops header value: " + REQUEST_HOPS, (), {"value": hopsHeader});
        int|error hops = int:fromString(hopsHeaderStr);
        if hops is int {
            int hopsCount = hops + hopIncrement;
            headers[REQUEST_HOPS] = hopsCount.toString();
        } else {
            log:printWarn("Invalid value in the header: " + REQUEST_HOPS, hops);
        }
    }
    return headers;
}
