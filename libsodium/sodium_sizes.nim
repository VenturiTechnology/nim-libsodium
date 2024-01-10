# 2017 Federico Ceratto <federico.ceratto@gmail.com>
# Released under MPL-2.0, see LICENSE file
#
## Libsodium18/23 wrapper for Nim
##
## Functions returning sizes of various elements

when defined(windows):
  const libsodium_fn* = "libsodium.dll"
elif defined(macosx):
  const libsodium_fn* = "libsodium.dylib"
else:
  const libsodium_fn* = "libsodium.so(.18|.23|.26)"

when not defined(libsodiumStatic):
  {.pragma: sodium_import, importc, dynlib: libsodium_fn.}
else:
  const libsodiumHeader {.strdefine.} = "<sodium.h>"
  {.pragma: sodium_import, importc, header: libsodiumHeader.}

proc crypto_aead_aes256gcm_abytes*(): cint {.sodium_import.}
proc crypto_aead_aes256gcm_keybytes*(): cint {.sodium_import.}
proc crypto_aead_aes256gcm_npubbytes*(): cint {.sodium_import.}
proc crypto_aead_aes256gcm_nsecbytes*(): cint {.sodium_import.}
proc crypto_aead_aes256gcm_statebytes*(): cint {.sodium_import.}
proc crypto_aead_chacha20poly1305_abytes*(): cint {.sodium_import.}
#proc crypto_aead_chacha20poly1305_ietf_abytes*(): cint {.sodium_import.}
#proc crypto_aead_chacha20poly1305_ietf_keybytes*(): cint {.sodium_import.}
proc crypto_aead_chacha20poly1305_ietf_npubbytes*(): cint {.sodium_import.}
#proc crypto_aead_chacha20poly1305_ietf_nsecbytes*(): cint {.sodium_import.}
proc crypto_aead_chacha20poly1305_keybytes*(): cint {.sodium_import.}
proc crypto_aead_chacha20poly1305_npubbytes*(): cint {.sodium_import.}
proc crypto_aead_chacha20poly1305_nsecbytes*(): cint {.sodium_import.}
proc crypto_auth_bytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha256_bytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha256_keybytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha256_statebytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha512256_bytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha512256_keybytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha512256_statebytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha512_bytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha512_keybytes*(): cint {.sodium_import.}
proc crypto_auth_hmacsha512_statebytes*(): cint {.sodium_import.}
proc crypto_auth_keybytes*(): cint {.sodium_import.}
proc crypto_box_beforenmbytes*(): cint {.sodium_import.}
proc crypto_box_boxzerobytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_beforenmbytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_boxzerobytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_macbytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_noncebytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_publickeybytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_secretkeybytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_seedbytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_zerobytes*(): cint {.sodium_import.}
proc crypto_box_curve25519xsalsa20poly1305_messagebytes_max*(): csize_t {.sodium_import.}
proc crypto_box_macbytes*(): cint {.sodium_import.}
proc crypto_box_noncebytes*(): cint {.sodium_import.}
proc crypto_box_publickeybytes*(): cint {.sodium_import.}
proc crypto_box_sealbytes*(): cint {.sodium_import.}
proc crypto_box_secretkeybytes*(): cint {.sodium_import.}
proc crypto_box_seedbytes*(): cint {.sodium_import.}
proc crypto_box_zerobytes*(): cint {.sodium_import.}
#proc crypto_core_hchacha20_constbytes*(): cint {.sodium_import.}
#proc crypto_core_hchacha20_inputbytes*(): cint {.sodium_import.}
#proc crypto_core_hchacha20_keybytes*(): cint {.sodium_import.}
#proc crypto_core_hchacha20_outputbytes*(): cint {.sodium_import.}
proc crypto_core_hsalsa20_constbytes*(): cint {.sodium_import.}
proc crypto_core_hsalsa20_inputbytes*(): cint {.sodium_import.}
proc crypto_core_hsalsa20_keybytes*(): cint {.sodium_import.}
proc crypto_core_hsalsa20_outputbytes*(): cint {.sodium_import.}
proc crypto_core_salsa2012_constbytes*(): cint {.sodium_import.}
proc crypto_core_salsa2012_inputbytes*(): cint {.sodium_import.}
proc crypto_core_salsa2012_keybytes*(): cint {.sodium_import.}
proc crypto_core_salsa2012_outputbytes*(): cint {.sodium_import.}
proc crypto_core_salsa208_constbytes*(): cint {.sodium_import.}
proc crypto_core_salsa208_inputbytes*(): cint {.sodium_import.}
proc crypto_core_salsa208_keybytes*(): cint {.sodium_import.}
proc crypto_core_salsa208_outputbytes*(): cint {.sodium_import.}
proc crypto_core_salsa20_constbytes*(): cint {.sodium_import.}
proc crypto_core_salsa20_inputbytes*(): cint {.sodium_import.}
proc crypto_core_salsa20_keybytes*(): cint {.sodium_import.}
proc crypto_core_salsa20_outputbytes*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_bytes*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_bytes_max*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_bytes_min*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_keybytes*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_keybytes_max*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_keybytes_min*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_personalbytes*(): cint {.sodium_import.}
proc crypto_generichash_blake2b_saltbytes*(): cint {.sodium_import.}
#proc crypto_generichash_blake2b_statebytes*(): cint {.sodium_import.}
proc crypto_generichash_bytes*(): cint {.sodium_import.}
proc crypto_generichash_bytes_max*(): cint {.sodium_import.}
proc crypto_generichash_bytes_min*(): cint {.sodium_import.}
proc crypto_generichash_keybytes*(): cint {.sodium_import.}
proc crypto_generichash_keybytes_max*(): cint {.sodium_import.}
proc crypto_generichash_keybytes_min*(): cint {.sodium_import.}
proc crypto_generichash_statebytes*(): cint {.sodium_import.}
proc crypto_hash_bytes*(): cint {.sodium_import.}
proc crypto_hash_sha256_bytes*(): cint {.sodium_import.}
proc crypto_hash_sha256_statebytes*(): cint {.sodium_import.}
proc crypto_hash_sha512_bytes*(): cint {.sodium_import.}
proc crypto_hash_sha512_statebytes*(): cint {.sodium_import.}
proc crypto_kx_publickeybytes*(): cint {.sodium_import.}
proc crypto_kx_secretkeybytes*(): cint {.sodium_import.}
proc crypto_kx_seedbytes*(): cint {.sodium_import.}
proc crypto_kx_sessionkeybytes*(): cint {.sodium_import.}
proc crypto_onetimeauth_bytes*(): cint {.sodium_import.}
proc crypto_onetimeauth_keybytes*(): cint {.sodium_import.}
proc crypto_onetimeauth_poly1305_bytes*(): cint {.sodium_import.}
proc crypto_onetimeauth_poly1305_keybytes*(): cint {.sodium_import.}
proc crypto_onetimeauth_statebytes*(): cint {.sodium_import.}
proc crypto_pwhash_argon2i_saltbytes*(): cint {.sodium_import.}
proc crypto_pwhash_argon2i_strbytes*(): cint {.sodium_import.}
proc crypto_pwhash_bytes_max*(): csize_t {.sodium_import.}
proc crypto_pwhash_bytes_min*(): csize_t {.sodium_import.}
proc crypto_pwhash_memlimit_interactive*(): csize_t {.sodium_import.}
proc crypto_pwhash_memlimit_max*(): csize_t {.sodium_import.}
proc crypto_pwhash_memlimit_min*(): csize_t {.sodium_import.}
proc crypto_pwhash_memlimit_moderate*(): csize_t {.sodium_import.}
proc crypto_pwhash_memlimit_sensitive*(): csize_t {.sodium_import.}
proc crypto_pwhash_opslimit_interactive*(): csize_t {.sodium_import.}
proc crypto_pwhash_opslimit_max*(): csize_t {.sodium_import.}
proc crypto_pwhash_opslimit_min*(): csize_t {.sodium_import.}
proc crypto_pwhash_opslimit_moderate*(): csize_t {.sodium_import.}
proc crypto_pwhash_opslimit_sensitive*(): csize_t {.sodium_import.}
proc crypto_pwhash_passwd_max*(): csize_t {.sodium_import.}
proc crypto_pwhash_passwd_min*(): csize_t {.sodium_import.}
proc crypto_pwhash_saltbytes*(): csize_t {.sodium_import.}
proc crypto_pwhash_scryptsalsa208sha256_saltbytes*(): csize_t {.sodium_import.}
proc crypto_pwhash_scryptsalsa208sha256_strbytes*(): csize_t {.sodium_import.}
proc crypto_pwhash_strbytes*(): csize_t {.sodium_import.}
proc crypto_scalarmult_bytes*(): cint {.sodium_import.}
proc crypto_scalarmult_curve25519_bytes*(): cint {.sodium_import.}
proc crypto_scalarmult_curve25519_scalarbytes*(): cint {.sodium_import.}
proc crypto_scalarmult_scalarbytes*(): cint {.sodium_import.}
proc crypto_secretbox_boxzerobytes*(): cint {.sodium_import.}
proc crypto_secretbox_keybytes*(): cint {.sodium_import.}
proc crypto_secretbox_macbytes*(): cint {.sodium_import.}
proc crypto_secretbox_noncebytes*(): cint {.sodium_import.}
proc crypto_secretbox_xsalsa20poly1305_boxzerobytes*(): cint {.sodium_import.}
proc crypto_secretbox_xsalsa20poly1305_keybytes*(): cint {.sodium_import.}
proc crypto_secretbox_xsalsa20poly1305_macbytes*(): cint {.sodium_import.}
proc crypto_secretbox_xsalsa20poly1305_noncebytes*(): cint {.sodium_import.}
proc crypto_secretbox_xsalsa20poly1305_zerobytes*(): cint {.sodium_import.}
proc crypto_secretbox_zerobytes*(): cint {.sodium_import.}
proc crypto_secretstream_xchacha20poly1305_abytes*(): cint {.sodium_import.}
proc crypto_secretstream_xchacha20poly1305_keybytes*(): cint {.sodium_import.}
proc crypto_secretstream_xchacha20poly1305_headerbytes*(): cint {.sodium_import.}
proc crypto_secretstream_xchacha20poly1305_statebytes*(): cint {.sodium_import.}
proc crypto_shorthash_bytes*(): cint {.sodium_import.}
proc crypto_shorthash_keybytes*(): cint {.sodium_import.}
proc crypto_shorthash_siphash24_bytes*(): cint {.sodium_import.}
proc crypto_shorthash_siphash24_keybytes*(): cint {.sodium_import.}
proc crypto_sign_bytes*(): cint {.sodium_import.}
proc crypto_sign_ed25519_bytes*(): cint {.sodium_import.}
proc crypto_sign_ed25519_publickeybytes*(): cint {.sodium_import.}
proc crypto_sign_ed25519_secretkeybytes*(): cint {.sodium_import.}
proc crypto_sign_ed25519_seedbytes*(): cint {.sodium_import.}
proc crypto_sign_publickeybytes*(): cint {.sodium_import.}
proc crypto_sign_secretkeybytes*(): cint {.sodium_import.}
proc crypto_sign_seedbytes*(): cint {.sodium_import.}
proc crypto_stream_chacha20_ietf_noncebytes*(): cint {.sodium_import.}
proc crypto_stream_chacha20_keybytes*(): cint {.sodium_import.}
proc crypto_stream_chacha20_noncebytes*(): cint {.sodium_import.}
proc crypto_stream_keybytes*(): cint {.sodium_import.}
proc crypto_stream_noncebytes*(): cint {.sodium_import.}
proc crypto_stream_salsa2012_keybytes*(): cint {.sodium_import.}
proc crypto_stream_salsa2012_noncebytes*(): cint {.sodium_import.}
proc crypto_stream_salsa208_keybytes*(): cint {.sodium_import.}
proc crypto_stream_salsa208_noncebytes*(): cint {.sodium_import.}
proc crypto_stream_salsa20_keybytes*(): cint {.sodium_import.}
proc crypto_stream_salsa20_noncebytes*(): cint {.sodium_import.}
proc crypto_stream_xsalsa20_keybytes*(): cint {.sodium_import.}
proc crypto_stream_xsalsa20_noncebytes*(): cint {.sodium_import.}
proc crypto_verify_16_bytes*(): cint {.sodium_import.}
proc crypto_verify_32_bytes*(): cint {.sodium_import.}
proc crypto_verify_64_bytes*(): cint {.sodium_import.}
