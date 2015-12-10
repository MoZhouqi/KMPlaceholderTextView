Pod::Spec.new do |s|

  s.name         = "KMPlaceholderTextView"
  s.version      = "1.1.1"
  s.summary      = "A UITextView subclass that adds support for multiline placeholder written in Swift."

  s.description  = <<-DESC
                   A UITextView subclass that adds support for multiline placeholder written in Swift. 
                   It is convenient to set the value of the placeholder property just like using UITextField.
                   DESC

  s.homepage     = "https://github.com/MoZhouqi/KMPlaceholderTextView"
  s.screenshots  = "https://raw.githubusercontent.com/MoZhouqi/KMPlaceholderTextView/master/Screenshots/preview.gif"

  s.license      = "MIT"

  s.author             = { "Zhouqi Mo" => "mozhouqi@gmail.com" }
  s.social_media_url   = "https://twitter.com/MoZhouqi"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/MoZhouqi/KMPlaceholderTextView.git", :tag => s.version }

  s.source_files  = "KMPlaceholderTextView/*.swift"

  s.frameworks = "UIKit"

  s.requires_arc = true

end
