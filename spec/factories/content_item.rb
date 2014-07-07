FactoryGirl.define do

  factory :content_item do
    sequence(:base_path) {|n| "/test-content-#{n}" }
    format "answer"
    title "Test content"
    rendering_app 'frontend'
    routes { [{ 'path' => base_path, 'type' => 'exact' }] }
  end

  factory :redirect_content_item, :class => ContentItem do
    sequence(:base_path) {|n| "/test-redirect-#{n}" }
    format "redirect"
    redirects { [{ 'path' => base_path, 'type' => 'exact', 'destination' => '/somewhere' }] }
  end
end
