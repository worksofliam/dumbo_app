**free

ctl-opt dftactgrp(*no);

dcl-pi P4608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1437.rpgleinc'
/copy 'qrpgleref/P1544.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P4608';
dsply theCharVar;
P1437();
P1544();
P684();
return;