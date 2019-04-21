# Found and Written By Hect0r Xorius

		.globl _start

_start:

# ============================================================================
#   Stops DirtyDiscErrorUI from showing and branches back to the link register.
# ============================================================================

		.long 0x8245D0B0
		.long (9f - 0f) / 4

0:
		nop
		blr
9:

# ============================================================================
#   Removes Hashchecking and skips to loading.
# ============================================================================

		.long 0x8221B768
		.long (9f - 0f) / 4

0:
		li %r3, 0
		nop
9:

# DO NOT INSERT ANYTHING BELOW THIS POINT!!!
# ============================================================================
		.long 0xffffffff
		.end
# ============================================================================
