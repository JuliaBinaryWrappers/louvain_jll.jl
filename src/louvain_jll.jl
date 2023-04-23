# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule louvain_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("louvain")
JLLWrappers.@generate_main_file("louvain", UUID("3a01c810-c4d4-5434-a337-635ca50da98f"))
end  # module louvain_jll
