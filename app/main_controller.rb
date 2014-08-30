class MainViewController < UIViewController
  extend IB

  outlet :imageView, UIImageView

  def viewDidLoad
    self.setImage(self)
  end

  def setImage(sender)
    imageView.image = UIImage.imageNamed("sample.jpg")
  end

  def editImage(sender)
    AFOpenGLManager.beginOpenGLLoad()
    AFPhotoEditorController.setAPIKey(ENV['AVIARY_KEY'], secret:ENV['AVIARY_SECRET'])
    # AFPhotoEditorCustomization.setToolOrder(['kAFEffects','kAFFocus'])
    editor = AFPhotoEditorController.alloc.initWithImage(imageView.image)
    editor.delegate = self
    presentViewController(editor, animated:true, completion:nil)
  end

  def photoEditor(editor, finishedWithImage:image)
    imageView.image = image
    dismissViewControllerAnimated(true, completion:nil)
  end

  def photoEditorCanceled(editor)
    dismissViewControllerAnimated(true, completion:nil)
  end

end
