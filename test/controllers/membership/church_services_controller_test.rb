# frozen_string_literal: true

require 'test_helper'

module Membership
  class ChurchServicesControllerTest < ActionDispatch::IntegrationTest
    setup do
      @membership_church_service = membership_church_services(:one)
    end

    test 'should get index' do
      get membership_church_services_url
      assert_response :success
    end

    test 'should get new' do
      get new_membership_church_service_url
      assert_response :success
    end

    test 'should create membership_church_service' do
      assert_difference('Membership::ChurchService.count') do
        post membership_church_services_url,
             params: { membership_church_service: { date: @membership_church_service.date } }
      end

      assert_redirected_to membership_church_service_url(Membership::ChurchService.last)
    end

    test 'should show membership_church_service' do
      get membership_church_service_url(@membership_church_service)
      assert_response :success
    end

    test 'should get edit' do
      get edit_membership_church_service_url(@membership_church_service)
      assert_response :success
    end

    test 'should update membership_church_service' do
      patch membership_church_service_url(@membership_church_service),
            params: { membership_church_service: { date: @membership_church_service.date } }
      assert_redirected_to membership_church_service_url(@membership_church_service)
    end

    test 'should destroy membership_church_service' do
      assert_difference('Membership::ChurchService.count', -1) do
        delete membership_church_service_url(@membership_church_service)
      end

      assert_redirected_to membership_church_services_url
    end
  end
end
