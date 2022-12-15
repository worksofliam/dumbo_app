**free

ctl-opt dftactgrp(*no);

dcl-pi P4435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1030.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P4435';
dsply theCharVar;
P1030();
P1293();
P192();
return;