# Autogenerated wrapper script for louvain_jll for x86_64-linux-musl-cxx03
export convertlouvain, hierarchy, louvain

JLLWrappers.@generate_wrapper_header("louvain")
JLLWrappers.@declare_executable_product(convertlouvain)
JLLWrappers.@declare_executable_product(hierarchy)
JLLWrappers.@declare_executable_product(louvain)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_executable_product(
        convertlouvain,
        "bin/convert",
    )

    JLLWrappers.@init_executable_product(
        hierarchy,
        "bin/hierarchy",
    )

    JLLWrappers.@init_executable_product(
        louvain,
        "bin/louvain",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
