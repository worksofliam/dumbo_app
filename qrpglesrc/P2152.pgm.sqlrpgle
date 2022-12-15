**free

ctl-opt dftactgrp(*no);

dcl-pi P2152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P1366.rpgleinc'

dcl-ds T518 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T518 FROM T518 LIMIT 1;

theCharVar = 'Hello from P2152';
dsply theCharVar;
P254();
P166();
P1366();
return;