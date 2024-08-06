resource "pinecone_collection" "this" {
  count  = length(var.collection)
  source = try(
    element(pinecone_index.this.*.name, lookup(var.collection[count.index], "source_id"))
  )
  name   = lookup(var.collection[count.index], "name")
}

resource "pinecone_index" "this" {
  count     = length(var.index)
  name      = lookup(var.index[count.index], "name")
  dimension = lookup(var.index[count.index], "dimension")

  dynamic "spec" {
    for_each = lookup(var.index, "spec")
    content {
      dynamic "serverless" {
        for_each = lookup(spec.value, "serverless") == null ? [] : ["serverless"]
        content {
          region = lookup(serverless.value, "region")
          cloud  = lookup(serverless.value, "cloud")
        }
      }

      dynamic "pod" {
        for_each = lookup(spec.value, "pod") == null ? [] : ["pod"]
        content {
          environment       = lookup(pod.value, "environment")
          pod_type          = lookup(pod.value, "pod_type")
          replicas          = lookup(pod.value, "replicas")
          shards            = lookup(pod.value, "shards")
          pods              = lookup(pod.value, "pods")
          source_collection = lookup(pod.value, "source_collection")
          metadata_config = {
            indexed = lookup(pod.value, "indexed")
          }
        }
      }
    }
  }
}