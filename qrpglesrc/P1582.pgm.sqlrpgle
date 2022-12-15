**free

ctl-opt dftactgrp(*no);

dcl-pi P1582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P1405.rpgleinc'

dcl-ds theTable extname('T1726') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1726 LIMIT 1;

theCharVar = 'Hello from P1582';
dsply theCharVar;
P637();
P107();
P1405();
return;