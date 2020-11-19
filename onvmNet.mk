.PHONY: all

export CGO_CFLAGS         += -m64 -pthread -O3 -march=native 
export CGO_CFLAGS         += -I${ONVM_HOME}/onvm/onvm_nflib
export CGO_CFLAGS         += -I${ONVM_HOME}/onvm/lib
export CGO_CFLAGS         += -I${RTE_SDK}/${RTE_TARGET}/include
export CGO_LDFLAGS        += ${ONVM_HOME}/onvm/onvm_nflib/${RTE_TARGET}/libonvm.a
export CGO_LDFLAGS        += ${ONVM_HOME}/onvm/lib/${RTE_TARGET}/lib/libonvmhelper.a -lm
export CGO_LDFLAGS        += -L${RTE_SDK}/${RTE_TARGET}/lib
export CGO_LDFLAGS        += -lrte_flow_classify -Wl,--whole-archive -lrte_pipeline -Wl,--no-whole-archive -Wl,--whole-archive -lrte_table -Wl,--no-whole-archive -Wl,--whole-archive -lrte_port -Wl,--no-whole-archive -lrte_pdump -lrte_distributor -lrte_ip_frag -lrte_meter -lrte_lpm -Wl,--whole-archive -lrte_acl -Wl,--no-whole-archive -lrte_jobstats -lrte_metrics -lrte_bitratestats -lrte_latencystats -lrte_power -lrte_efd -lrte_bpf -Wl,--whole-archive -lrte_cfgfile -lrte_gro -lrte_gso -lrte_hash -lrte_member -lrte_vhost -lrte_kvargs -lrte_mbuf -lrte_net -lrte_ethdev -lrte_bbdev -lrte_cryptodev -lrte_security -lrte_compressdev -lrte_eventdev -lrte_rawdev -lrte_timer -lrte_mempool -lrte_mempool_ring -lrte_ring -lrte_pci -lrte_eal -lrte_cmdline -lrte_reorder -lrte_sched -lrte_kni -lrte_common_cpt -lrte_common_octeontx -lrte_common_dpaax -lrte_bus_pci -lrte_bus_vdev -lrte_bus_dpaa -lrte_bus_fslmc -lrte_mempool_bucket -lrte_mempool_stack -lrte_mempool_dpaa -lrte_mempool_dpaa2 -lrte_pmd_af_packet -lrte_pmd_ark -lrte_pmd_atlantic -lrte_pmd_avf -lrte_pmd_avp -lrte_pmd_axgbe -lrte_pmd_bnxt -lrte_pmd_bond -lrte_pmd_cxgbe -lrte_pmd_dpaa -lrte_pmd_dpaa2 -lrte_pmd_e1000 -lrte_pmd_ena -lrte_pmd_enetc -lrte_pmd_enic -lrte_pmd_fm10k -lrte_pmd_failsafe -lrte_pmd_i40e -lrte_pmd_ixgbe -lrte_pmd_kni -lrte_pmd_lio -lrte_pmd_nfp -lrte_pmd_null -lrte_pmd_qede -lrte_pmd_ring -lrte_pmd_softnic -lrte_pmd_sfc_efx -lrte_pmd_tap -lrte_pmd_thunderx_nicvf -lrte_pmd_vdev_netvsc -lrte_pmd_virtio -lrte_pmd_vhost -lrte_pmd_ifc -lrte_pmd_vmxnet3_uio -lrte_bus_vmbus -lrte_pmd_netvsc -lrte_pmd_bbdev_null -lrte_pmd_null_crypto -lrte_pmd_octeontx_crypto -lrte_pmd_crypto_scheduler -lrte_pmd_dpaa2_sec -lrte_pmd_dpaa_sec -lrte_pmd_caam_jr -lrte_pmd_virtio_crypto -lrte_pmd_octeontx_zip -lrte_pmd_qat -lrte_pmd_skeleton_event -lrte_pmd_sw_event -lrte_pmd_dsw_event -lrte_pmd_octeontx_ssovf -lrte_pmd_dpaa_event -lrte_pmd_dpaa2_event -lrte_mempool_octeontx -lrte_pmd_octeontx -lrte_pmd_opdl_event -lrte_pmd_skeleton_rawdev -lrte_pmd_dpaa2_cmdif -lrte_pmd_dpaa2_qdma -lrte_bus_ifpga -lrte_pmd_ifpga_rawdev -Wl,--no-whole-archive -lrt -lm -lnuma -ldl

