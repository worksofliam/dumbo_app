**free

ctl-opt dftactgrp(*no);

dcl-pi P2456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P1447.rpgleinc'

dcl-ds T374 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T374 FROM T374 LIMIT 1;

theCharVar = 'Hello from P2456';
dsply theCharVar;
P844();
P8();
P1447();
return;