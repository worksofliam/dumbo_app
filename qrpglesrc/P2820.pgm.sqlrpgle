**free

ctl-opt dftactgrp(*no);

dcl-pi P2820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P2173.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds theTable extname('T1869') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1869 LIMIT 1;

theCharVar = 'Hello from P2820';
dsply theCharVar;
P46();
P2173();
P204();
return;