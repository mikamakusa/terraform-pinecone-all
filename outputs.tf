## collection

output "pinecone_collection_id" {
  value = try(
    pinecone_collection.this.*.id
  )
}

output "pinecone_collection_name" {
  value = try(
    pinecone_collection.this.*.name
  )
}

output "pinecone_collection_size" {
  value = try(
    pinecone_collection.this.*.size
  )
}

output "pinecone_collection_source" {
  value = try(
    pinecone_collection.this.*.source
  )
}

output "pinecone_collection_status" {
  value = try(
    pinecone_collection.this.*.status
  )
}

output "pinecone_collection_environment" {
  value = try(
    pinecone_collection.this.environment
  )
}

## Index ##

output "pinecone_index_id" {
  value = try(
    pinecone_index.this.id
  )
}

output "pinecone_index_name" {
  value = try(
    pinecone_index.this.*.name
  )
}

output "pinecone_index_status" {
  value = try(
    pinecone_index.this.*.status
  )
}

output "pinecone_index_host" {
  value = try(
    pinecone_index.this.*.host
  )
}

output "pinecone_index_dimension" {
  value = try(
    pinecone_index.this.*.dimension
  )
}