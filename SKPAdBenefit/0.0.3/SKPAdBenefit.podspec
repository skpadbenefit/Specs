Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '10.0'
  s.requires_arc = true

  s.name = "SKPAdBenefit"
  s.summary = "The SKPAd Benefit SDK makes it easy to serve advertisements with benefit in your iOS app."
  s.description = "The SKPAd Benefit SDK makes it easy to serve advertisements with benefit in your iOS app. It supports native ads and video ads. It provides powerful and customizable UI elements to make the ads look great in your app."
  s.version = "0.0.3"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = "SKP"
  s.homepage = "https://github.com/buzzvil/buzzad-benefit-sdk-publisher-ios"

  s.source = {
    :http => "https://github.com/skpadbenefit/SKPAdBenefitFramework/releases/download/v0.0.3/SKPAdBenefit.zip"
  }

  s.dependency 'AFNetworking', '~> 4.0'
  s.dependency 'SDWebImage', '~> 5.0'
  s.dependency 'SDWebImageWebPCoder'
  s.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.12.1'
  s.dependency 'ReactiveObjC', '~> 3.1.1'

  s.vendored_frameworks = ['SKPAdBenefit.framework', 'SKPAdBenefitNative.framework', 'SKPAdBenefitInterstitial.framework', 'SKPAdBenefitFeed.framework', 'SKPAdBenefitWebInterface.framework']
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
