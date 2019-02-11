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
local params = import '../parameters.libsonnet';
local resp = import '../responses.libsonnet';

local mediaType = {
  createNamespace:: 'application/vnd.titan-distribution.namespace.create.v1+json',
  batchCreateNamespace:: 'application/vnd.titan-distribution.namespace.batch-create.v1+json',
  deleteNamespace:: 'application/vnd.titan-distribution.namespace.delete.v1+json',
  batchDeleteNamespace:: 'application/vnd.titan-distribution.namespace.batch-delete.v1+json',
};

local putNamespace = {

  local responses = resp.ok
                    + resp.badRequest
                    + resp.unauthorized
                    + resp.forbidden,

  tags: ['namespaces'],
  operationId: 'createNamespace',
  responses: responses,
  requestBody: {
    required: true,
    content: {
      [mediaType.createNamespace]: {
        schema: schema.createNamespace('openapi'),
        example: example.createNamespace,
      },
    },
  },
};

local singularPathItems = {
  parameters: [params.namespace],
  put: putNamespace,
};

{
  '/namespaces/{namespace}': singularPathItems,
}
