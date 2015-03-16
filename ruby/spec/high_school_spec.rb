require 'spec_helper'
require_relative '../high_school'

RSpec.describe HighSchool do

  it "can enroll students" do
    high_school = HighSchool.new(100)
    expect(high_school.vacancies).to eq(100)

    high_school.enroll("Lindsay Weir")
    expect(high_school.vacancies).to eq(99)
  end

  it "returns an array of the studetns who were enrolled" do
    high_school = HighSchool.new(100)

    high_school.enroll("Lindsay Weir")
    high_school.enroll("Sam Weir")
    high_school.enroll("Daniel Desario")

    expect(high_school.vacancies).to eq(97)
    expect(high_school.students).to eq(["Lindsay Weir", "Sam Weir", "Daniel Desario"])
  end

end
