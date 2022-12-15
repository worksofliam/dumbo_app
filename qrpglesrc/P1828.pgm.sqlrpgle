**free

ctl-opt dftactgrp(*no);

dcl-pi P1828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1360.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'
/copy 'qrpgleref/P1684.rpgleinc'

dcl-ds theTable extname('T307') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T307 LIMIT 1;

theCharVar = 'Hello from P1828';
dsply theCharVar;
P1360();
P1732();
P1684();
return;