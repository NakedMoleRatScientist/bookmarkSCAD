require "tempfile"
require "zip"
manifest =
{
    :version => "R1",
    :project_name => "bookMark"
}
directory_name = manifest[:project_name] + "-" + manifest[:version]

task :create do
    project_dir = Dir.getwd()
    zip = (directory_name + ".zip")
    if File.exist? zip
        File.delete zip
    end

    items = ["bookmark.scad"]

    Zip::File.open(zip, create: true) do |zipfile|
        items.each do |filename|
            zipfile.add(filename, File.join(project_dir, filename))
        end

        Dir.children("vendors/UtilitySCAD-R1/").each do |filename|
            zipfile.add("vendors/UtilitySCAD-R1/" + filename, File.join("vendors/UtilitySCAD-R1",filename))
        end
    end
end



task :remove do
    FileUtils.rm_r(directory_name + ".zip")
end
