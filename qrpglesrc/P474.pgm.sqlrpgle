**free

ctl-opt dftactgrp(*no);

dcl-pi P474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'

dcl-ds T33 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T33 FROM T33 LIMIT 1;

theCharVar = 'Hello from P474';
dsply theCharVar;
P79();
P393();
P433();
return;