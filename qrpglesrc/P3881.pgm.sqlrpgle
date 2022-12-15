**free

ctl-opt dftactgrp(*no);

dcl-pi P3881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2472.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'
/copy 'qrpgleref/P3166.rpgleinc'

dcl-ds theTable extname('T786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T786 LIMIT 1;

theCharVar = 'Hello from P3881';
dsply theCharVar;
P2472();
P1312();
P3166();
return;