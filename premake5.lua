project "glfw"
    kind "StaticLib" -- Static library project
    language "C"
    staticruntime "on"
    
    -- Add your source files here
    files {
        "src/**.h",
        "src/**.c"
    }
    
    filter "system:windows"
        -- Add Windows-specific settings if needed

        defines
        {
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS"
        }
    
    filter "system:linux"
        -- Add Linux-specific settings if needed

        defines
        {
            "_GLFW_X11"
        }

    filter "system:macosx"
        -- Add MacOSX-specific settings if needed

        files {
            "src/**.m"
        }

        defines
        {
            "_GLFW_COCOA"
        }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"