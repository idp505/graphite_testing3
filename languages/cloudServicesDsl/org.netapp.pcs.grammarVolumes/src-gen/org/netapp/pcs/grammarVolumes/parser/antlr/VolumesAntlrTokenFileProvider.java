/*
 * generated by Xtext 2.36.0
 */
package org.netapp.pcs.grammarVolumes.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class VolumesAntlrTokenFileProvider implements IAntlrTokenFileProvider {

	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
		return classLoader.getResourceAsStream("org/netapp/pcs/grammarVolumes/parser/antlr/internal/InternalVolumes.tokens");
	}
}
