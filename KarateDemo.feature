Feature: Demo Snelheid Implementatie

Scenario: First API test 
  Given     url 'https://httpbin.org/anything'
  And       request { myKey: 'myValue' }
  When      method post
  Then      status 200
  And       match response.json == { myKey: 'myValue' }

Scenario: First Browser test woopwoop
  * configure driver = { type: 'chrome' }
  Given driver 'https://google.nl'
  And input('textarea[name=q]', 'Halloooo Wereldvrienden')
  And waitUntil('textarea[name=q]') 
  
Scenario: First Browser test woopwoop
  * configure driver = { type: 'ie' }
  Given driver 'https://google.nl'
  And input('textarea[name=q]', 'Halloooo Wereldvrienden')
  And pause(100000000)
