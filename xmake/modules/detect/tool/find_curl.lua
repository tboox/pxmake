--!The Make-like Build Utility based on Lua
--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- 
-- Copyright (C) 2015 - 2017, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        find_curl.lua
--

-- imports
import("lib.detect.find_program")
import("lib.detect.find_programver")

-- find curl 
--
-- @param opt   the argument options, .e.g {version = true}
--
-- @return      program, version
--
-- @code 
--
-- local git = find_curl()
-- local git, version = find_curl({version = true})
-- 
-- @endcode
--
function main(opt)
    
    -- find program
    local program = find_program("curl", { "/usr/bin", "/usr/local/bin"})

    -- find program version
    local version = nil
    if opt and opt.version then
        version = find_programver(program)
    end

    -- ok?
    return program, version
end
