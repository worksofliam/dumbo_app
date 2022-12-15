**free

ctl-opt dftactgrp(*no);

dcl-pi P4640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3019.rpgleinc'
/copy 'qrpgleref/P815.rpgleinc'
/copy 'qrpgleref/P1396.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P4640';
dsply theCharVar;
P3019();
P815();
P1396();
return;