require "capybara/rspec"
require "./app"
require "pry"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new list', {:type => :feature}) do
  it('allows a user to click a list to see the tasks and the details for it') do
    visit('/')
    fill_in('name', :with => 'Epicodus Work')
    click_button('Add list')
    expect(page).to have_content('Epicodus Work')
  end
end

describe('viewing all of the lists', {:type => :feature}) do
  it('allows a user to see all of the lists that have been created') do
    list = List.new({:name => 'Epicodus Homework', :id => 1})
    list.save
    visit('/')
    expect(page).to have_content(list.name)
  end
end

describe('seeing details for a single list', {:type => :feature}) do
  it('allows a user to click a list to see the tasks and details for it') do
    test_list = List.new({:name => 'School stuff', :id => 2})
    test_list.save()
    test_task = Task.new({:description => "learn SQL", :list_id => test_list.id()})
    test_task.save()
    visit('/')
    click_link(test_list.name())
    expect(page).to have_content(test_task.description())
  end
end

describe('adding tasks to a list', {:type => :feature}) do
  it('allows a user to add a task to a list') do
    test_list = List.new({:name => 'School stuff', :id => 3})
    test_list.save()
    visit("/")
    select('School stuff', :from => 'list_id')
    fill_in("Description", {:with => "learn SQL"})
    click_button("Add task")
    expect(page).to have_content("learn SQL")
  end
end
