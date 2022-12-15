**free

ctl-opt dftactgrp(*no);

dcl-pi P4100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3408.rpgleinc'
/copy 'qrpgleref/P2498.rpgleinc'
/copy 'qrpgleref/P2456.rpgleinc'

dcl-ds theTable extname('T1478') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1478 LIMIT 1;

theCharVar = 'Hello from P4100';
dsply theCharVar;
P3408();
P2498();
P2456();
return;