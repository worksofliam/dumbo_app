**free

ctl-opt dftactgrp(*no);

dcl-pi P2114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P904.rpgleinc'
/copy 'qrpgleref/P1364.rpgleinc'
/copy 'qrpgleref/P748.rpgleinc'

dcl-ds T101 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T101 FROM T101 LIMIT 1;

theCharVar = 'Hello from P2114';
dsply theCharVar;
P904();
P1364();
P748();
return;