**free

ctl-opt dftactgrp(*no);

dcl-pi P4736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4491.rpgleinc'
/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P2497.rpgleinc'

dcl-ds T1070 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1070 FROM T1070 LIMIT 1;

theCharVar = 'Hello from P4736';
dsply theCharVar;
P4491();
P607();
P2497();
return;