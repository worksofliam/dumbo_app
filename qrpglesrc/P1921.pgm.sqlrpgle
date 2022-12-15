**free

ctl-opt dftactgrp(*no);

dcl-pi P1921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1722.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T1173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1173 LIMIT 1;

theCharVar = 'Hello from P1921';
dsply theCharVar;
P1722();
P1173();
P171();
return;