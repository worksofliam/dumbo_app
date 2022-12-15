**free

ctl-opt dftactgrp(*no);

dcl-pi P1174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P1121.rpgleinc'
/copy 'qrpgleref/P1006.rpgleinc'

dcl-ds theTable extname('T814') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T814 LIMIT 1;

theCharVar = 'Hello from P1174';
dsply theCharVar;
P108();
P1121();
P1006();
return;