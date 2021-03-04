#!/usr/bin/env julia

using Pkg
Pkg.activate(normpath(@__DIR__))

using hello_world

function main(nome)
    #if !isnothing(nome)
    if isempty(nome)
        hello_world.greet()
    else
        hello_world.greet(nome[1])
    end
end

main(ARGS)
