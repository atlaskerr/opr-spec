// Copyright © 2019 Titan Authors
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

local openapi = 'openapi';
local jsonschema = 'jsonschema';
local V7 = 'http://json-schema.org/draft-07/schema#';

local jid = {
  createNamespace: 'https://titan-registry.io/schema/namespace/create-namespace',
  batchCreateNamespace: 'https://titan-registry.io/schema/namespace/batch-create-namespace',
  deleteNamespace: 'https://titan-registry.io/schema/namespace/delete-namespace',
  batchDeleteNamespace: 'https://titan-registry.io/schema/namespace/batch-delete-namespace',
};

local uint64 = {
  type: 'integer',
  minimum: 0,
  maximum: 18446744073709551615,
};

local mapStringString(output=jsonschema) = {
  type: 'object',
  [if output == jsonschema
  then 'patternProperties'
  else if output == openapi
  then 'x-patternProperties']: {
    '.{1,}': {
      type: 'string',
    },
  },
};

local createNamespaceParams(output=jsonschema) = {
  type: 'object',
  properties: {
    name: { type: 'string' },
    storageLimit: uint64,
    repoLimit: uint64,
    labels: mapStringString(output),
  },
};

local createNamespace(output=jsonschema) = createNamespaceParams(output) {
  [if output == jsonschema then '$id']: jid.createNamespace,
  [if output == jsonschema then '$schema']: V7,
  title: 'Create Namespace',
};

local batchCreateNamespace(output=jsonschema) = {
  [if output == jsonschema then '$id']: jid.batchCreateNamespace,
  [if output == jsonschema then '$schema']: V7,
  title: 'Batch Create Namespace',
  type: 'object',
  properties: {
    namespaces: {
      type: 'array',
      items: createNamespaceParams(output),
    },
  },
};

local deleteNamespaceParams(output=jsonschema) = {
  namespace: { type: 'string' },
};

local deleteNamespace(output=jsonschema) = {
  [if output == jsonschema then '$id']: jid.deleteNamespace,
  [if output == jsonschema then '$schema']: V7,
  title: 'Delete Namespace',
  type: 'object',
  properties: deleteNamespaceParams(output),
};

local batchDeleteNamespace(output=jsonschema) = {
  [if output == jsonschema then '$id']: jid.batchDeleteNamespace,
  [if output == jsonschema then '$schema']: V7,
  title: 'Batch Delete Namespace',
  type: 'object',
  properties: {
    namespaces: {
      type: 'array',
      items: deleteNamespaceParams(output),
    },
  },
};

{
  createNamespace:: createNamespace,
  batchCreateNamespace:: batchCreateNamespace,
  deleteNamespace:: deleteNamespace,
  batchDeleteNamespace:: batchDeleteNamespace,
}
