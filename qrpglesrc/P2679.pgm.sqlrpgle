**free

ctl-opt dftactgrp(*no);

dcl-pi P2679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1280.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'

dcl-ds T864 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T864 FROM T864 LIMIT 1;

theCharVar = 'Hello from P2679';
dsply theCharVar;
P1280();
P1660();
P1184();
return;