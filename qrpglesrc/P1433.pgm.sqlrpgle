**free

ctl-opt dftactgrp(*no);

dcl-pi P1433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'

dcl-ds T545 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T545 FROM T545 LIMIT 1;

theCharVar = 'Hello from P1433';
dsply theCharVar;
P233();
P240();
P555();
return;