**free

ctl-opt dftactgrp(*no);

dcl-pi P1723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'

dcl-ds theTable extname('T14') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T14 LIMIT 1;

theCharVar = 'Hello from P1723';
dsply theCharVar;
P11();
P1235();
P577();
return;