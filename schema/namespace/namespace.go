// Copyright © 2019 Titan Distribution Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package namespace

import (
	"github.com/atlaskerr/opr-spec/schema"

	"github.com/xeipuuv/gojsonschema"
)

var (
	createNamespaceFilepath = "namespace/create-namespace.schema.json"
)

// CreateNamespaceSchema returns a gojsonschema.Schema for validation.
func CreateNamespaceSchema() *gojsonschema.Schema {
	path := "namespace/create-namespace.schema.json"
	mediatype := schema.MediaTypeCreateNamespace
	return schema.Load(path, mediatype)
}

// BatchCreateNamespaceSchema returns a gojsonschema.Schema for validation.
func BatchCreateNamespaceSchema() *gojsonschema.Schema {
	path := "namespace/batch-create-namespace.schema.json"
	mediatype := schema.MediaTypeBatchCreateNamespace
	return schema.Load(path, mediatype)
}

// DeleteNamespaceSchema returns a gojsonschema.Schema for validation.
func DeleteNamespaceSchema() *gojsonschema.Schema {
	path := "namespace/delete-namespace.schema.json"
	mediatype := schema.MediaTypeDeleteNamespace
	return schema.Load(path, mediatype)
}

// BatchDeleteNamespaceSchema returns a gojsonschema.Schema for validation.
func BatchDeleteNamespaceSchema() *gojsonschema.Schema {
	path := "namespace/batch-delete-namespace.schema.json"
	mediatype := schema.MediaTypeBatchDeleteNamespace
	return schema.Load(path, mediatype)
}
