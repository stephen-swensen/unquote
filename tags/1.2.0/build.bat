set /p versionNumber=

"C:\Program Files\Microsoft F#\v4.0\fsc.exe" -o:Unquote.dll --noframework --define:TRACE --optimize+ -r:"C:\Program Files\FSharp-2.0.0.0\v4.0\bin\FSharp.Compiler.dll" -r:"C:\Program Files\FSharp-2.0.0.0\v4.0\bin\FSharp.Compiler.Interactive.Settings.dll" -r:"C:\Program Files\FSharp-2.0.0.0\v4.0\bin\FSharp.Core.dll" -r:"C:\Program Files\FSharpPowerPack-2.0.0.0\\bin\FSharp.PowerPack.dll" -r:"C:\Program Files\FSharpPowerPack-2.0.0.0\\bin\FSharp.PowerPack.Linq.dll" -r:"C:\Program Files\FSharpPowerPack-2.0.0.0\\bin\FSharp.PowerPack.Metadata.dll" -r:"C:\Program Files\FSharpPowerPack-2.0.0.0\\bin\FSharp.PowerPack.Parallel.Seq.dll" -r:"C:\Program Files\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\mscorlib.dll" -r:"C:\Program Files\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Core.dll" -r:"C:\Program Files\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.dll" -r:"C:\Program Files\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Numerics.dll" --target:library --warn:3 --warnaserror:76 --vserrors --LCID:1033 --utf8output --fullpaths --flaterrors "C:\Users\Stephen\AppData\Local\Temp\.NETFramework,Version=v4.0.AssemblyAttributes.fs" Unquote\RegexUtils.fs Unquote\Sprint.fs Unquote\Reduce.fs Unquote\TypeExt.fs Unquote\ExprExt.fs Unquote\Operators.fs

7z a -tzip builds\Unquote-%versionNumber%.zip Unquote.dll LICENSE NOTICE readme.html
del Unquote.dll
pause