require('spec_helper')

describe(List) do

  describe("#tasks") do
    it("returns an array of tasks for that list") do
      test_list = List.create({:name => "Epicodus stuff"})
      test_task = Task.create({:description => "Learn SQL", :list_id => test_list.id()})
      test_task2 = Task.create({:description => "Review Ruby", :list_id => test_list.id()})
      expect(test_list.tasks()).to(eq([test_task, test_task2]))
    end
  end
end
