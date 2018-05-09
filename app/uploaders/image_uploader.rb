class ImageUploader < Shrine
    plugin :processing
    plugin :versions, names: [:original, :large, :medium, :small, :profile, :job_card]
    plugin :delete_raw
    plugin :determine_mime_type
   
    process(:store) do |io, context|
      original = io.download
      pipeline = ImageProcessing::MiniMagick.source(original)
   
      size_65 = pipeline.resize_to_limit!(65, 65)
      size_80 = pipeline.resize_to_limit!(80, 80)
      size_300 = pipeline.resize_to_limit!(300, 300)
      size_450 = pipeline.resize_to_limit!(450, 450)
      size_800 = pipeline.resize_to_limit!(800, 800)
        
      original.close!
   
      { original: io, large: size_800, medium: size_450, small: size_300, profile: size_80, job_card: size_65 }
    end
end