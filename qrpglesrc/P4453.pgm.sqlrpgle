**free

ctl-opt dftactgrp(*no);

dcl-pi P4453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2920.rpgleinc'
/copy 'qrpgleref/P4364.rpgleinc'
/copy 'qrpgleref/P1491.rpgleinc'

dcl-ds T1239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1239 FROM T1239 LIMIT 1;

theCharVar = 'Hello from P4453';
dsply theCharVar;
P2920();
P4364();
P1491();
return;