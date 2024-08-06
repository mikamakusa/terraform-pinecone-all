## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_pinecone"></a> [pinecone](#provider\_pinecone) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [pinecone_collection.this](https://registry.terraform.io/providers/pinecone-io/pinecone/latest/docs/resources/collection) | resource |
| [pinecone_index.this](https://registry.terraform.io/providers/pinecone-io/pinecone/latest/docs/resources/index) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_collection"></a> [collection](#input\_collection) | n/a | <pre>list(object({<br>    id        = number<br>    source_id = any<br>    name      = string<br>  }))</pre> | `[]` | no |
| <a name="input_index"></a> [index](#input\_index) | n/a | <pre>list(object({<br>    id        = number<br>    name      = string<br>    dimension = number<br>    spec = list(object({<br>      serverless = optional(list(object({<br>        region = string<br>        cloud  = string<br>      })))<br>      pod = optional(list(object({<br>        environment       = string<br>        pod_type          = string<br>        replicas          = optional(number)<br>        shards            = optional(number)<br>        pods              = optional(string)<br>        source_collection = optional(string)<br>        indexed           = optional(string)<br>      })))<br>    }))<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pinecone_collection_environment"></a> [pinecone\_collection\_environment](#output\_pinecone\_collection\_environment) | n/a |
| <a name="output_pinecone_collection_id"></a> [pinecone\_collection\_id](#output\_pinecone\_collection\_id) | n/a |
| <a name="output_pinecone_collection_name"></a> [pinecone\_collection\_name](#output\_pinecone\_collection\_name) | n/a |
| <a name="output_pinecone_collection_size"></a> [pinecone\_collection\_size](#output\_pinecone\_collection\_size) | n/a |
| <a name="output_pinecone_collection_source"></a> [pinecone\_collection\_source](#output\_pinecone\_collection\_source) | n/a |
| <a name="output_pinecone_collection_status"></a> [pinecone\_collection\_status](#output\_pinecone\_collection\_status) | n/a |
| <a name="output_pinecone_index_dimension"></a> [pinecone\_index\_dimension](#output\_pinecone\_index\_dimension) | n/a |
| <a name="output_pinecone_index_host"></a> [pinecone\_index\_host](#output\_pinecone\_index\_host) | n/a |
| <a name="output_pinecone_index_id"></a> [pinecone\_index\_id](#output\_pinecone\_index\_id) | n/a |
| <a name="output_pinecone_index_name"></a> [pinecone\_index\_name](#output\_pinecone\_index\_name) | n/a |
| <a name="output_pinecone_index_status"></a> [pinecone\_index\_status](#output\_pinecone\_index\_status) | n/a |
