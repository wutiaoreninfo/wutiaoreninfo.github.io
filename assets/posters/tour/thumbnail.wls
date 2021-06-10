DeleteFile[FileNames["*-s.jpg"]]
Export[StringReplace[#, ".jpg" -> "-s.jpg"], Thumbnail[#, Small]] & /@  FileNames["*.jpg"]