/*
 * generated by Xtext 2.36.0
 */
grammar InternalEfforts;

options {
	superClass=AbstractInternalAntlrParser;
	backtrack=true;
}

@lexer::header {
package workload.xtext_grammar.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package workload.xtext_grammar.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import workload.xtext_grammar.services.EffortsGrammarAccess;

}

@parser::members {

/*
  This grammar contains a lot of empty actions to work around a bug in ANTLR.
  Otherwise the ANTLR tool will create synpreds that cannot be compiled in some rare cases.
*/

 	private EffortsGrammarAccess grammarAccess;

    public InternalEffortsParser(TokenStream input, EffortsGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Main";
   	}

   	@Override
   	protected EffortsGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleMain
entryRuleMain returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMainRule()); }
	iv_ruleMain=ruleMain
	{ $current=$iv_ruleMain.current; }
	EOF;

// Rule Main
ruleMain returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getMainAccess().getTaskAction_0(),
					$current);
			}
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getMainAccess().getEffortsEffortParserRuleCall_1_0());
				}
				lv_efforts_1_0=ruleEffort
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMainRule());
					}
					add(
						$current,
						"efforts",
						lv_efforts_1_0,
						"workload.xtext_grammar.Efforts.Effort");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		(
			this_NEWLINE_2=RULE_NEWLINE
			{
				newLeafNode(this_NEWLINE_2, grammarAccess.getMainAccess().getNEWLINETerminalRuleCall_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getMainAccess().getEffortsEffortParserRuleCall_2_1_0());
					}
					lv_efforts_3_0=ruleEffort
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMainRule());
						}
						add(
							$current,
							"efforts",
							lv_efforts_3_0,
							"workload.xtext_grammar.Efforts.Effort");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleEffort
entryRuleEffort returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEffortRule()); }
	iv_ruleEffort=ruleEffort
	{ $current=$iv_ruleEffort.current; }
	EOF;

// Rule Effort
ruleEffort returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getEffortAccess().getEffortAction_0(),
					$current);
			}
		)
		(
			(
				{
					/* */
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEffortRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getEffortAccess().getPersonPersonCrossReference_1_0());
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getEffortAccess().getColonKeyword_2());
		}
		(
			(
				lv_months_3_0=RULE_INT
				{
					newLeafNode(lv_months_3_0, grammarAccess.getEffortAccess().getMonthsINTTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEffortRule());
					}
					setWithLastConsumed(
						$current,
						"months",
						lv_months_3_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
	)
;

RULE_NEWLINE : (' '|'\t')* '\r'? '\n' (' '|'\t')*;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
