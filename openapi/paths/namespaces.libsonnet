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

local example = import '../../schema/namespace/golden.libsonnet';
local schema = import '../../schema/namespace/namespace.libsonnet';

local mediaType = {
  createNamespace:: 'application/vnd.titan-distribution.namespace.create.v1+json',
  batchCreateNamespace:: 'application/vnd.titan-distribution.namespace.batch-create.v1+json',
  deleteNamespace:: 'application/vnd.titan-distribution.namespace.delete.v1+json',
  batchDeleteNamespace:: 'application/vnd.titan-distribution.namespace.batch-delete.v1+json',
};

local postOp = {
  tags: ['namespaces'],
  operationId: 'createNamespace',
  responses: {
    '200': {
      description: 'OK',
    },
  },
  requestBody: {
    required: true,
    content: {
      [mediaType.createNamespace]: {
        schema: schema.createNamespace('openapi'),
        example: example.createNamespace,
      },
      [mediaType.batchCreateNamespace]: {
        schema: schema.batchCreateNamespace('openapi'),
        example: example.batchCreateNamespace,
      },
      [mediaType.deleteNamespace]: {
        schema: schema.deleteNamespace('openapi'),
        example: example.deleteNamespace,
      },
      [mediaType.batchDeleteNamespace]: {
        schema: schema.deleteNamespace('openapi'),
        example: example.batchDeleteNamespace,
      },
    },
  },
};

local pathItem = {
  post: postOp,
};


pathItem
