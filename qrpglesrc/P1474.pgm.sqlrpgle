**free

ctl-opt dftactgrp(*no);

dcl-pi P1474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1308.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'

dcl-ds T399 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T399 FROM T399 LIMIT 1;

theCharVar = 'Hello from P1474';
dsply theCharVar;
P1308();
P499();
P684();
return;