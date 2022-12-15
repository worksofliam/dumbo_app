**free

ctl-opt dftactgrp(*no);

dcl-pi P3408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P2531.rpgleinc'
/copy 'qrpgleref/P2356.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P3408';
dsply theCharVar;
P222();
P2531();
P2356();
return;