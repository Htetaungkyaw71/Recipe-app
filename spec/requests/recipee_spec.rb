RSpec.describe 'Recipees', type: :request do
    describe 'GET /index' do
      before(:each) do
        @recipe = Recipee.new(name:"hello",preparation_time: 2,cooking_time: 1,description:"This is description",public: true )
      end
      it 'Test for http status' do
        get "/recipees"
        expect(response).to have_http_status(200)
      end
      it 'Test for correct template' do
        get "/recipees"
        expect(response).to render_template('index')
      end
      it 'Test for response body includes correct placeholder text' do
        get "/recipees"
        expect(response.body).to include 'Recipees'
      end
    end
  
    describe 'GET /show' do
      before(:each) do
        @recipe = Recipee.new(name:"hello",preparation_time: 2,cooking_time: 1,description:"This is description",public: true )
      end
      it 'Test for http status' do
        get "/recipees/#{@recipe.id}"
        expect(response).to have_http_status(200)
      end
      it 'Test for correct template' do
        get "/recipees/#{@recipe.id}"
        expect(response).to render_template('index')
      end
      it 'Test for response body includes correct placeholder text' do
        get "/recipees/#{@recipe.id}"
        expect(response.body).to include @recipe.name
      end
    end

    describe 'GET /new' do
        before(:each) do
          @recipe = Recipee.new(name:"hello",preparation_time: 2,cooking_time: 1,description:"This is description",public: true )
        end
        it 'Test for http status' do
          get "/recipees/new"
          expect(response).to have_http_status(200)
        end
        it 'Test for correct template' do
          get "/recipees/new"
          expect(response).to render_template('new')
        end
        it 'Test for response body includes correct placeholder text' do
          get "/recipees/new"
          expect(response.body).to include 'New recipee'
        end
      end
  end