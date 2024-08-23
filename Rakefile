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
     list = ["bookmark.scad"]
     Zip::File.open(zip, create: true) do |zipfile|
        list.each do |filename|
        zipfile.add(filename, File.join(project_dir, filename))
     end
  end
end

task :remove do
    FileUtils.rm_r(directory_name + ".zip")
end
