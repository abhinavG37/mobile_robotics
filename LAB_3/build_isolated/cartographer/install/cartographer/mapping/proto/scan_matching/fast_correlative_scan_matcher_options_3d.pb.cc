// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: cartographer/mapping/proto/scan_matching/fast_correlative_scan_matcher_options_3d.proto

#include "cartographer/mapping/proto/scan_matching/fast_correlative_scan_matcher_options_3d.pb.h"

#include <algorithm>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/port.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// This is a temporary google only hack
#ifdef GOOGLE_PROTOBUF_ENFORCE_UNIQUENESS
#include "third_party/protobuf/version.h"
#endif
// @@protoc_insertion_point(includes)

namespace cartographer {
namespace mapping {
namespace scan_matching {
namespace proto {
class FastCorrelativeScanMatcherOptions3DDefaultTypeInternal {
 public:
  ::google::protobuf::internal::ExplicitlyConstructed<FastCorrelativeScanMatcherOptions3D>
      _instance;
} _FastCorrelativeScanMatcherOptions3D_default_instance_;
}  // namespace proto
}  // namespace scan_matching
}  // namespace mapping
}  // namespace cartographer
namespace protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto {
static void InitDefaultsFastCorrelativeScanMatcherOptions3D() {
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  {
    void* ptr = &::cartographer::mapping::scan_matching::proto::_FastCorrelativeScanMatcherOptions3D_default_instance_;
    new (ptr) ::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D();
    ::google::protobuf::internal::OnShutdownDestroyMessage(ptr);
  }
  ::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D::InitAsDefaultInstance();
}

::google::protobuf::internal::SCCInfo<0> scc_info_FastCorrelativeScanMatcherOptions3D =
    {{ATOMIC_VAR_INIT(::google::protobuf::internal::SCCInfoBase::kUninitialized), 0, InitDefaultsFastCorrelativeScanMatcherOptions3D}, {}};

void InitDefaults() {
  ::google::protobuf::internal::InitSCC(&scc_info_FastCorrelativeScanMatcherOptions3D.base);
}

::google::protobuf::Metadata file_level_metadata[1];

const ::google::protobuf::uint32 TableStruct::offsets[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  ~0u,  // no _has_bits_
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, branch_and_bound_depth_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, full_resolution_depth_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, min_rotational_score_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, min_low_resolution_score_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, linear_xy_search_window_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, linear_z_search_window_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D, angular_search_window_),
};
static const ::google::protobuf::internal::MigrationSchema schemas[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  { 0, -1, sizeof(::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D)},
};

static ::google::protobuf::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::google::protobuf::Message*>(&::cartographer::mapping::scan_matching::proto::_FastCorrelativeScanMatcherOptions3D_default_instance_),
};

void protobuf_AssignDescriptors() {
  AddDescriptors();
  AssignDescriptors(
      "cartographer/mapping/proto/scan_matching/fast_correlative_scan_matcher_options_3d.proto", schemas, file_default_instances, TableStruct::offsets,
      file_level_metadata, NULL, NULL);
}

void protobuf_AssignDescriptorsOnce() {
  static ::google::protobuf::internal::once_flag once;
  ::google::protobuf::internal::call_once(once, protobuf_AssignDescriptors);
}

void protobuf_RegisterTypes(const ::std::string&) GOOGLE_PROTOBUF_ATTRIBUTE_COLD;
void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::internal::RegisterAllTypes(file_level_metadata, 1);
}

void AddDescriptorsImpl() {
  InitDefaults();
  static const char descriptor[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
      "\nWcartographer/mapping/proto/scan_matchi"
      "ng/fast_correlative_scan_matcher_options"
      "_3d.proto\022(cartographer.mapping.scan_mat"
      "ching.proto\"\204\002\n#FastCorrelativeScanMatch"
      "erOptions3D\022\036\n\026branch_and_bound_depth\030\002 "
      "\001(\005\022\035\n\025full_resolution_depth\030\010 \001(\005\022\034\n\024mi"
      "n_rotational_score\030\004 \001(\001\022 \n\030min_low_reso"
      "lution_score\030\t \001(\001\022\037\n\027linear_xy_search_w"
      "indow\030\005 \001(\001\022\036\n\026linear_z_search_window\030\006 "
      "\001(\001\022\035\n\025angular_search_window\030\007 \001(\001b\006prot"
      "o3"
  };
  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
      descriptor, 402);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "cartographer/mapping/proto/scan_matching/fast_correlative_scan_matcher_options_3d.proto", &protobuf_RegisterTypes);
}

void AddDescriptors() {
  static ::google::protobuf::internal::once_flag once;
  ::google::protobuf::internal::call_once(once, AddDescriptorsImpl);
}
// Force AddDescriptors() to be called at dynamic initialization time.
struct StaticDescriptorInitializer {
  StaticDescriptorInitializer() {
    AddDescriptors();
  }
} static_descriptor_initializer;
}  // namespace protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto
namespace cartographer {
namespace mapping {
namespace scan_matching {
namespace proto {

// ===================================================================

void FastCorrelativeScanMatcherOptions3D::InitAsDefaultInstance() {
}
#if !defined(_MSC_VER) || _MSC_VER >= 1900
const int FastCorrelativeScanMatcherOptions3D::kBranchAndBoundDepthFieldNumber;
const int FastCorrelativeScanMatcherOptions3D::kFullResolutionDepthFieldNumber;
const int FastCorrelativeScanMatcherOptions3D::kMinRotationalScoreFieldNumber;
const int FastCorrelativeScanMatcherOptions3D::kMinLowResolutionScoreFieldNumber;
const int FastCorrelativeScanMatcherOptions3D::kLinearXySearchWindowFieldNumber;
const int FastCorrelativeScanMatcherOptions3D::kLinearZSearchWindowFieldNumber;
const int FastCorrelativeScanMatcherOptions3D::kAngularSearchWindowFieldNumber;
#endif  // !defined(_MSC_VER) || _MSC_VER >= 1900

FastCorrelativeScanMatcherOptions3D::FastCorrelativeScanMatcherOptions3D()
  : ::google::protobuf::Message(), _internal_metadata_(NULL) {
  ::google::protobuf::internal::InitSCC(
      &protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto::scc_info_FastCorrelativeScanMatcherOptions3D.base);
  SharedCtor();
  // @@protoc_insertion_point(constructor:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
}
FastCorrelativeScanMatcherOptions3D::FastCorrelativeScanMatcherOptions3D(const FastCorrelativeScanMatcherOptions3D& from)
  : ::google::protobuf::Message(),
      _internal_metadata_(NULL) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::memcpy(&min_rotational_score_, &from.min_rotational_score_,
    static_cast<size_t>(reinterpret_cast<char*>(&min_low_resolution_score_) -
    reinterpret_cast<char*>(&min_rotational_score_)) + sizeof(min_low_resolution_score_));
  // @@protoc_insertion_point(copy_constructor:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
}

void FastCorrelativeScanMatcherOptions3D::SharedCtor() {
  ::memset(&min_rotational_score_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&min_low_resolution_score_) -
      reinterpret_cast<char*>(&min_rotational_score_)) + sizeof(min_low_resolution_score_));
}

FastCorrelativeScanMatcherOptions3D::~FastCorrelativeScanMatcherOptions3D() {
  // @@protoc_insertion_point(destructor:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  SharedDtor();
}

void FastCorrelativeScanMatcherOptions3D::SharedDtor() {
}

void FastCorrelativeScanMatcherOptions3D::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const ::google::protobuf::Descriptor* FastCorrelativeScanMatcherOptions3D::descriptor() {
  ::protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto::file_level_metadata[kIndexInFileMessages].descriptor;
}

const FastCorrelativeScanMatcherOptions3D& FastCorrelativeScanMatcherOptions3D::default_instance() {
  ::google::protobuf::internal::InitSCC(&protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto::scc_info_FastCorrelativeScanMatcherOptions3D.base);
  return *internal_default_instance();
}


void FastCorrelativeScanMatcherOptions3D::Clear() {
// @@protoc_insertion_point(message_clear_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  ::google::protobuf::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  ::memset(&min_rotational_score_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&min_low_resolution_score_) -
      reinterpret_cast<char*>(&min_rotational_score_)) + sizeof(min_low_resolution_score_));
  _internal_metadata_.Clear();
}

bool FastCorrelativeScanMatcherOptions3D::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!GOOGLE_PREDICT_TRUE(EXPRESSION)) goto failure
  ::google::protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  for (;;) {
    ::std::pair<::google::protobuf::uint32, bool> p = input->ReadTagWithCutoffNoLastTag(127u);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // int32 branch_and_bound_depth = 2;
      case 2: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(16u /* 16 & 0xFF */)) {

          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &branch_and_bound_depth_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // double min_rotational_score = 4;
      case 4: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(33u /* 33 & 0xFF */)) {

          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &min_rotational_score_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // double linear_xy_search_window = 5;
      case 5: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(41u /* 41 & 0xFF */)) {

          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &linear_xy_search_window_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // double linear_z_search_window = 6;
      case 6: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(49u /* 49 & 0xFF */)) {

          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &linear_z_search_window_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // double angular_search_window = 7;
      case 7: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(57u /* 57 & 0xFF */)) {

          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &angular_search_window_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // int32 full_resolution_depth = 8;
      case 8: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(64u /* 64 & 0xFF */)) {

          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &full_resolution_depth_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // double min_low_resolution_score = 9;
      case 9: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(73u /* 73 & 0xFF */)) {

          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &min_low_resolution_score_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      default: {
      handle_unusual:
        if (tag == 0) {
          goto success;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, _internal_metadata_.mutable_unknown_fields()));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  return false;
#undef DO_
}

void FastCorrelativeScanMatcherOptions3D::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  ::google::protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // int32 branch_and_bound_depth = 2;
  if (this->branch_and_bound_depth() != 0) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->branch_and_bound_depth(), output);
  }

  // double min_rotational_score = 4;
  if (this->min_rotational_score() != 0) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(4, this->min_rotational_score(), output);
  }

  // double linear_xy_search_window = 5;
  if (this->linear_xy_search_window() != 0) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(5, this->linear_xy_search_window(), output);
  }

  // double linear_z_search_window = 6;
  if (this->linear_z_search_window() != 0) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(6, this->linear_z_search_window(), output);
  }

  // double angular_search_window = 7;
  if (this->angular_search_window() != 0) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(7, this->angular_search_window(), output);
  }

  // int32 full_resolution_depth = 8;
  if (this->full_resolution_depth() != 0) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(8, this->full_resolution_depth(), output);
  }

  // double min_low_resolution_score = 9;
  if (this->min_low_resolution_score() != 0) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(9, this->min_low_resolution_score(), output);
  }

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        (::google::protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), output);
  }
  // @@protoc_insertion_point(serialize_end:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
}

::google::protobuf::uint8* FastCorrelativeScanMatcherOptions3D::InternalSerializeWithCachedSizesToArray(
    bool deterministic, ::google::protobuf::uint8* target) const {
  (void)deterministic; // Unused
  // @@protoc_insertion_point(serialize_to_array_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  ::google::protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // int32 branch_and_bound_depth = 2;
  if (this->branch_and_bound_depth() != 0) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->branch_and_bound_depth(), target);
  }

  // double min_rotational_score = 4;
  if (this->min_rotational_score() != 0) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(4, this->min_rotational_score(), target);
  }

  // double linear_xy_search_window = 5;
  if (this->linear_xy_search_window() != 0) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(5, this->linear_xy_search_window(), target);
  }

  // double linear_z_search_window = 6;
  if (this->linear_z_search_window() != 0) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(6, this->linear_z_search_window(), target);
  }

  // double angular_search_window = 7;
  if (this->angular_search_window() != 0) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(7, this->angular_search_window(), target);
  }

  // int32 full_resolution_depth = 8;
  if (this->full_resolution_depth() != 0) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(8, this->full_resolution_depth(), target);
  }

  // double min_low_resolution_score = 9;
  if (this->min_low_resolution_score() != 0) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(9, this->min_low_resolution_score(), target);
  }

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        (::google::protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  return target;
}

size_t FastCorrelativeScanMatcherOptions3D::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  size_t total_size = 0;

  if ((_internal_metadata_.have_unknown_fields() &&  ::google::protobuf::internal::GetProto3PreserveUnknownsDefault())) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        (::google::protobuf::internal::GetProto3PreserveUnknownsDefault()   ? _internal_metadata_.unknown_fields()   : _internal_metadata_.default_instance()));
  }
  // double min_rotational_score = 4;
  if (this->min_rotational_score() != 0) {
    total_size += 1 + 8;
  }

  // double linear_xy_search_window = 5;
  if (this->linear_xy_search_window() != 0) {
    total_size += 1 + 8;
  }

  // int32 branch_and_bound_depth = 2;
  if (this->branch_and_bound_depth() != 0) {
    total_size += 1 +
      ::google::protobuf::internal::WireFormatLite::Int32Size(
        this->branch_and_bound_depth());
  }

  // int32 full_resolution_depth = 8;
  if (this->full_resolution_depth() != 0) {
    total_size += 1 +
      ::google::protobuf::internal::WireFormatLite::Int32Size(
        this->full_resolution_depth());
  }

  // double linear_z_search_window = 6;
  if (this->linear_z_search_window() != 0) {
    total_size += 1 + 8;
  }

  // double angular_search_window = 7;
  if (this->angular_search_window() != 0) {
    total_size += 1 + 8;
  }

  // double min_low_resolution_score = 9;
  if (this->min_low_resolution_score() != 0) {
    total_size += 1 + 8;
  }

  int cached_size = ::google::protobuf::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void FastCorrelativeScanMatcherOptions3D::MergeFrom(const ::google::protobuf::Message& from) {
// @@protoc_insertion_point(generalized_merge_from_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  GOOGLE_DCHECK_NE(&from, this);
  const FastCorrelativeScanMatcherOptions3D* source =
      ::google::protobuf::internal::DynamicCastToGenerated<const FastCorrelativeScanMatcherOptions3D>(
          &from);
  if (source == NULL) {
  // @@protoc_insertion_point(generalized_merge_from_cast_fail:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
  // @@protoc_insertion_point(generalized_merge_from_cast_success:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
    MergeFrom(*source);
  }
}

void FastCorrelativeScanMatcherOptions3D::MergeFrom(const FastCorrelativeScanMatcherOptions3D& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::google::protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  if (from.min_rotational_score() != 0) {
    set_min_rotational_score(from.min_rotational_score());
  }
  if (from.linear_xy_search_window() != 0) {
    set_linear_xy_search_window(from.linear_xy_search_window());
  }
  if (from.branch_and_bound_depth() != 0) {
    set_branch_and_bound_depth(from.branch_and_bound_depth());
  }
  if (from.full_resolution_depth() != 0) {
    set_full_resolution_depth(from.full_resolution_depth());
  }
  if (from.linear_z_search_window() != 0) {
    set_linear_z_search_window(from.linear_z_search_window());
  }
  if (from.angular_search_window() != 0) {
    set_angular_search_window(from.angular_search_window());
  }
  if (from.min_low_resolution_score() != 0) {
    set_min_low_resolution_score(from.min_low_resolution_score());
  }
}

void FastCorrelativeScanMatcherOptions3D::CopyFrom(const ::google::protobuf::Message& from) {
// @@protoc_insertion_point(generalized_copy_from_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void FastCorrelativeScanMatcherOptions3D::CopyFrom(const FastCorrelativeScanMatcherOptions3D& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:cartographer.mapping.scan_matching.proto.FastCorrelativeScanMatcherOptions3D)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool FastCorrelativeScanMatcherOptions3D::IsInitialized() const {
  return true;
}

void FastCorrelativeScanMatcherOptions3D::Swap(FastCorrelativeScanMatcherOptions3D* other) {
  if (other == this) return;
  InternalSwap(other);
}
void FastCorrelativeScanMatcherOptions3D::InternalSwap(FastCorrelativeScanMatcherOptions3D* other) {
  using std::swap;
  swap(min_rotational_score_, other->min_rotational_score_);
  swap(linear_xy_search_window_, other->linear_xy_search_window_);
  swap(branch_and_bound_depth_, other->branch_and_bound_depth_);
  swap(full_resolution_depth_, other->full_resolution_depth_);
  swap(linear_z_search_window_, other->linear_z_search_window_);
  swap(angular_search_window_, other->angular_search_window_);
  swap(min_low_resolution_score_, other->min_low_resolution_score_);
  _internal_metadata_.Swap(&other->_internal_metadata_);
}

::google::protobuf::Metadata FastCorrelativeScanMatcherOptions3D::GetMetadata() const {
  protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_cartographer_2fmapping_2fproto_2fscan_5fmatching_2ffast_5fcorrelative_5fscan_5fmatcher_5foptions_5f3d_2eproto::file_level_metadata[kIndexInFileMessages];
}


// @@protoc_insertion_point(namespace_scope)
}  // namespace proto
}  // namespace scan_matching
}  // namespace mapping
}  // namespace cartographer
namespace google {
namespace protobuf {
template<> GOOGLE_PROTOBUF_ATTRIBUTE_NOINLINE ::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D* Arena::CreateMaybeMessage< ::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D >(Arena* arena) {
  return Arena::CreateInternal< ::cartographer::mapping::scan_matching::proto::FastCorrelativeScanMatcherOptions3D >(arena);
}
}  // namespace protobuf
}  // namespace google

// @@protoc_insertion_point(global_scope)
