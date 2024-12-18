import Foundation

public enum PBXProductType: String {
    case none = "",
         
         application = "com.apple.product-type.application",
         tool = "com.apple.product-type.tool",
         
         kernelExtension = "com.apple.product-type.kernel-extension",
         kernelExtensionIOKit = "com.apple.product-type.kernel-extension.iokit",
         
         libraryStatic = "com.apple.product-type.library.static",
         libraryDynamic = "com.apple.product-type.library.dynamic"
}
