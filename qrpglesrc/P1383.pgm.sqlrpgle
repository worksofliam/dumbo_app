**free

ctl-opt dftactgrp(*no);

dcl-pi P1383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P944.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds T127 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T127 FROM T127 LIMIT 1;

theCharVar = 'Hello from P1383';
dsply theCharVar;
P944();
P114();
P753();
return;