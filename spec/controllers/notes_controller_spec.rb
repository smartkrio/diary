# describe NotesController, "Note create" do
#   before(:each) do
#     @note = mock_model(Note, :save => nil)
#     Note.stub(:new).and_return @note
#   end

#   it "should build a new note" do
#     Note.should_receive(:new).with(title: "note 1", event_description: 'some event', user_id: 1)
#     post :create, :note => { title: "note 1", event_description: 'some event', user_id: 1 }
#   end

#   it "should save the note" do
#     @note.should_receive(:save)
#     note :create
#   end

#   context "when the note saves successfully" do
#     before(:each) do
#       @note.stub(:save).and_return true
#     end

#     it "should set a flash[:notice] note" do
#       note :create
#       flash[:notice].should == "Заметка успешно создана!"
#     end

#     it "should redirect to the notes index" do
#       note :create
#       response.should redirect_to(notes_path)
#     end

#   end
# end
