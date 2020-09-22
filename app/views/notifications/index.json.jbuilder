json.array! @notifications do |notification|
  json.id notification.id
  json.actor notification.actor.first_name
  json.action notification.action
  json.notifiable do
    json.type "a #{notification.notifiable.class.to_s.underscore.humanize.downcase}"
  end
  json.url problem_path(notification.notifiable.problem, anchor: dom_id(notification.notifiable))
end