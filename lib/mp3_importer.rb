class MP3Importer
    attr_accessor :path

    def initialize(filepath)
        @path = filepath
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|file| file == "." || file == ".."}
    end

    def import
        files.each{|files|
    Song.new_by_filename(files)}
    end
end