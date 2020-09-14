# Autogenerated wrapper script for louvain_jll for x86_64-unknown-freebsd11.1-cxx11
export convertlouvain, hierarchy, louvain

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `convertlouvain`
const convertlouvain_splitpath = ["bin", "convert"]

# This will be filled out by __init__() for all products, as it must be done at runtime
convertlouvain_path = ""

# convertlouvain-specific global declaration
function convertlouvain(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(convertlouvain_path)
    end
end


# Relative path to `hierarchy`
const hierarchy_splitpath = ["bin", "hierarchy"]

# This will be filled out by __init__() for all products, as it must be done at runtime
hierarchy_path = ""

# hierarchy-specific global declaration
function hierarchy(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(hierarchy_path)
    end
end


# Relative path to `louvain`
const louvain_splitpath = ["bin", "louvain"]

# This will be filled out by __init__() for all products, as it must be done at runtime
louvain_path = ""

# louvain-specific global declaration
function louvain(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(louvain_path)
    end
end


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    global convertlouvain_path = normpath(joinpath(artifact_dir, convertlouvain_splitpath...))

    push!(PATH_list, dirname(convertlouvain_path))
    global hierarchy_path = normpath(joinpath(artifact_dir, hierarchy_splitpath...))

    push!(PATH_list, dirname(hierarchy_path))
    global louvain_path = normpath(joinpath(artifact_dir, louvain_splitpath...))

    push!(PATH_list, dirname(louvain_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
