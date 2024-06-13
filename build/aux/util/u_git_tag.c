// Copyright 2020, Collabora, Ltd.
// SPDX-License-Identifier: BSL-1.0
/*!
 * @file
 * @brief  Holds the git hash of Monado.
 * @author Jakob Bornecrantz <jakob@collabora.com>
 * @ingroup aux_util
 */

#include "util/u_git_tag.h"

#define GIT_DESC "v21.0.0-4472-gd62fee9b5"

#define MAJOR_VERSION 21
#define MINOR_VERSION 0
#define PATCH_VERSION 0
#define RUNTIME_DESCRIPTION "Monado test"

const char u_git_tag[] = GIT_DESC;
const uint16_t u_version_major = MAJOR_VERSION;
const uint16_t u_version_minor = MINOR_VERSION;
const uint16_t u_version_patch = PATCH_VERSION;
const char u_runtime_description[] = RUNTIME_DESCRIPTION;