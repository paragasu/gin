require 'spec/spec_helper'

describe("UsersController", function()

    describe("#index", function()
        it("responds with a list of users", function()
            local response = hit({
                method = 'GET',
                url = "/users"
            })

            assert.are.same(200, response.status)
            assert.are.same({ users = { 'roberto' }}, CJSON.decode(response.body))
            assert.are.same('application/json', response.headers['content-type'])
        end)
    end)
end)
