/*
 * generated by Xtext 2.30.0
 */
package org.netapp.pcs.grammarSnapMirror.ide;

import com.google.inject.Guice;
import com.google.inject.Injector;
import org.eclipse.xtext.util.Modules2;
import org.netapp.pcs.grammarSnapMirror.ReplicationMappingsRuntimeModule;
import org.netapp.pcs.grammarSnapMirror.ReplicationMappingsStandaloneSetup;

/**
 * Initialization support for running Xtext languages as language servers.
 */
public class ReplicationMappingsIdeSetup extends ReplicationMappingsStandaloneSetup {

	@Override
	public Injector createInjector() {
		return Guice.createInjector(Modules2.mixin(new ReplicationMappingsRuntimeModule(), new ReplicationMappingsIdeModule()));
	}
	
}
