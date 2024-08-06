run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "pinecone" {
  command = [plan,apply]

  variables {
    index = [
      {
        id         = 0
        name       = "tf-test-index"
        dimension  = 1536
        metric     = "cosine"
        spec       = [
          {
            serverless = [
              {
                cloud  = "aws"
                region = "us-west-2"
              }
            ]
          }
        ]
      }
    ]
    collection = [
      {
        id        = 0
        name      = "tftestcollection"
        source_id = 0
      }
    ]
  }
}