using MatrixCorrectionTools
using Documenter

DocMeta.setdocmeta!(MatrixCorrectionTools, :DocTestSetup, :(using MatrixCorrectionTools); recursive=true)

makedocs(;
    modules=[MatrixCorrectionTools],
    authors="Bagaev Dmitry <d.v.bagaev@tue.nl>",
    repo="https://github.com/reactivebayes/MatrixCorrectionTools.jl/blob/{commit}{path}#{line}",
    sitename="MatrixCorrectionTools.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://reactivebayes.github.io/MatrixCorrectionTools.jl",
        edit_link="main",
        assets=String[]
    ),
    pages=[
        "Home" => "index.md",
    ]
)

deploydocs(;
    repo = "github.com/ReactiveBayes/MatrixCorrectionTools.jl",
    devbranch = "main",
    forcepush = true
)
