# FeatureModule

How's to create project as lirary/framwork?
1. New project -> Framework
<img src= "https://github.com/wata-chinhtran/CommonModule/blob/master/create_framework_ex.png" />
2. Add class/function with open/public type if you want allow to access from outside module.</br>
    # Swift:</br>
    2.1: An open class is accessible and subclassable outside of the defining module. An open class member is accessible and overridable outside of the defining module.</br>
    2.2: A public class is accessible but not subclassable outside of the defining module. A public class member is accessible but not overridable outside of the defining module.
    Read more at: https://github.com/apple/swift-evolution/blob/master/proposals/0117-non-public-subclassable-by-default.md </br>
    # Objective C: </br>
    2.1 Go to current target -> build phases -> Headers
    2.2 Drop & drag all header files to public section if you allow to access from outside else move to private section when you dont allow user see or access to these class/function was define.
    <img src= "https://github.com/wata-chinhtran/CommonModule/blob/master/public_file_objective_c.png" />
3. Add example project as guideline how to use: </br>
    3.1 Add new target -> create new single app
    3.2 Import current module as framework. </br>    
    <img src= "https://github.com/wata-chinhtran/CommonModule/blob/master/add_example.png" />
    Or we can do with steps at: https://programmingwithswift.com/create-a-swift-framework/ </br> </br>
4. Create podspec file with template:</br>
  Pod::Spec.new do |spec| </br>
   spec.name = "{module_name}" //ex: Feature Module</br>
   spec.version = "1.0.0"</br>
   spec.summary = "Sample framework from blog post, not for real world use.Functional JSON parsing library for Swift."</br>
   spec.homepage = "{repo_link}" //ex: https://github.com/wata-chinhtran/FeatureModule.git</br>
   spec.license = { :type => 'MIT', :file => 'LICENSE' }</br>
   spec.authors = {</br>
    "{author_name}" => '{author_email}'</br>
   }</br>
   spec.social_media_url = "{repo_link}" //ex: https://github.com/wata-chinhtran/FeatureModule.git</br>

   spec.source = { :git => "{repo_link}" //ex: https://github.com/wata-chinhtran/FeatureModule.git, :tag => "v#{spec.version}", :submodules => true }</br>
   spec.source_files  ="{module_name}/**/*.{h,swift}"</br>
   spec.requires_arc = true</br>
   spec.platform     = :ios</br>
   spec.ios.deployment_target = "10.0"</br>
   spec.dependency "Moya" //optional</br>
  end</br>


Getting Started with Swift Unit Testing in Xcode
1. Adding a Unit Test Target to Your Xcode Project</br>
    1.1 Starting with a new project
    To get started, we are going to create a blank iOS project. You will want to have the include unit tests checkbox checked. </br>
    <img src= "https://github.com/wata-chinhtran/CommonModule/blob/master/ut_new_proj.png" /></br>
    1.2 You already have a project, and you want to add tests </br>
        1.2.1 Go to File > New > Target. Select iOS Unit Testing Bundle. Click Next.
        <img src= "https://github.com/wata-chinhtran/CommonModule/blob/master/ut_exist_proj.png" /> </br>
        1.2.2 Adding a Unit Test Class to Your Xcode Project
        When you create the unit test target, Xcode includes a unit test class file. It has the name AppNameTests.swift, where AppName is the name of your project. Unless you have a really small project, you will have multiple unit test classes.
        Choose File > New > File to add a new file to your project.
        <img src= "https://github.com/wata-chinhtran/CommonModule/blob/master/ut_create_test_case_class.png" /> </br>
        Select Unit Test Case Class from the list of file templates. Click the Next button.
        Enter the name of the class in the Class text field. The subclass should be set to XCTestCase, and the language should be set to Swift. Click the Next button to finish creating the unit test class.
        <img src= "https://github.com/wata-chinhtran/CommonModule/blob/master/ut_select_test_case_class.png" /></br>
2. The Initial Unit Test Class
Read more at: https://medium.com/@enricopiovesan/unit-testing-in-swift-tutorial-92daab95246b
