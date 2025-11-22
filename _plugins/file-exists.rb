module Jekyll
  class FileExistsTag < Liquid::Tag
    def initialize(tag_name, path, tokens)
      super
      @path = path.strip
    end

    def render(context)
      # Expand the file path using Liquid variables
      url = Liquid::Template.parse(@path).render(context).strip

      # Resolve path relative to site source
      site_source = context.registers[:site].config['source']
      file_path = File.join(site_source, url)

      # Return true/false as a string
      File.exist?(file_path).to_s
    end
  end
end

Liquid::Template.register_tag("file_exists", Jekyll::FileExistsTag)
