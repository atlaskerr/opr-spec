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

package schema

const (
	// MediaTypeCreateNamespace specifies the media type for creating
	// namespaces.
	MediaTypeCreateNamespace = "application/vnd.titan-distribution.namespace.create.v1+json"

	// MediaTypeBatchCreateNamespace specifies the media type for creating
	// namespaces in batches.
	MediaTypeBatchCreateNamespace = "application/vnd.titan-distribution.namespace.batch-create.v1+json"

	// MediaTypeDeleteNamespace specifies the media type for deleting
	// namespaces.
	MediaTypeDeleteNamespace = "application/vnd.titan-distribution.namespace.delete.v1+json"

	// MediaTypeBatchDeleteNamespace specifies the media type for deleting
	// namespaces in batches.
	MediaTypeBatchDeleteNamespace = "application/vnd.titan-distribution.namespace.batch-delete.v1+json"
)
