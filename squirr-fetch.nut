#!/usr/bin/env squirrel3

function readFile(path)
{
    local f = file(path, "r");
    local data = f.readblob(f.len());
    f.close();

    local result = "";

    for (local i = 0; i < data.len(); i++)
    {
        result += format("%c", data[i]);
    }

    return result;
}

function getValue(text, key)
{
    local start = text.find(key + "='");

    if (start == null)
        return null;

    start += (key + "='").len();

    local end = text.find("'", start);

    if (end == null)
        return null;

    return text.slice(start, end);
}

local username = getenv("USER");
local shell = getenv("SHELL");
local terminal = getenv("TERM");

local osRelease = readFile("/etc/os-release");
local distro = getValue(osRelease, "PRETTY_NAME");

print("                                          \n")
print("              SQUIRR-FETCH             \n")
print("   a fetching program made in Squirrel   \n")
print("                                          \n")
print("User:     " + username + "  \n");
print("Distro:   " + distro + "  \n");
print("Shell:    " + shell + "  \n");
print("Terminal: " + terminal + "  \n");
print("                                          \n")

