# frozen_string_literal: true

json.extract! membership_church_service, :id, :date, :created_at, :updated_at
json.url membership_church_service_url(membership_church_service, format: :json)
