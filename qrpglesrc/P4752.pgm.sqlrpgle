**free

ctl-opt dftactgrp(*no);

dcl-pi P4752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P2932.rpgleinc'
/copy 'qrpgleref/P1174.rpgleinc'

dcl-ds T1009 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1009 FROM T1009 LIMIT 1;

theCharVar = 'Hello from P4752';
dsply theCharVar;
P257();
P2932();
P1174();
return;