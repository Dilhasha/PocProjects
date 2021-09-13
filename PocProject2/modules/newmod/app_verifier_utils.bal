// Copyright (c) 2021, WSO2 Inc. (http://www.wso2.com). All Rights Reserved.
//
// This software is the property of WSO2 Inc. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
// You may not alter or remove any copyright or other notice from copies of this content.

import ballerina/regex;

function isAppVerifier(string reqResource, string[] displayTypes) returns boolean {
    if !reqResource.startsWith("app:") {
        return false;
    }

    string[] elems = regex:split(reqResource, ":");
    string res = elems[1];

    return !(displayTypes.indexOf(res) is ());
}

function isAppCreationVerified(int subscriptionLimit, int currentCount) returns  boolean {
    return currentCount < subscriptionLimit;
}

function isAppVerifier1(string reqResource, string[] displayTypes) returns boolean {
    if !reqResource.startsWith("app:") {
        return false;
    }

    string[] elems = regex:split(reqResource, ":");
    string res = elems[1];

    return !(displayTypes.indexOf(res) is ());
}

function isAppCreationVerified1(int subscriptionLimit, int currentCount) returns  boolean {
    return currentCount < subscriptionLimit;
}

function isAppVerifier2(string reqResource, string[] displayTypes) returns boolean {
    if !reqResource.startsWith("app:") {
        return false;
    }

    string[] elems = regex:split(reqResource, ":");
    string res = elems[1];

    return !(displayTypes.indexOf(res) is ());
}

function isAppCreationVerified2(int subscriptionLimit, int currentCount) returns  boolean {
    return currentCount < subscriptionLimit;
}
