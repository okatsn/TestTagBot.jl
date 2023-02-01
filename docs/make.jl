using TestTagBot
using Documenter

DocMeta.setdocmeta!(TestTagBot, :DocTestSetup, :(using TestTagBot); recursive=true)

makedocs(;
    modules=[TestTagBot],
    authors="okatsn <okatsn@gmail.com> and contributors",
    repo="https://github.com/okatsn/TestTagBot.jl/blob/{commit}{path}#{line}",
    sitename="TestTagBot.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://okatsn.github.io/TestTagBot.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/okatsn/TestTagBot.jl",
    devbranch="main",
)
