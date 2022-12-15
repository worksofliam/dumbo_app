**free

ctl-opt dftactgrp(*no);

dcl-pi P199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T1468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1468 LIMIT 1;

theCharVar = 'Hello from P199';
dsply theCharVar;
P53();
P177();
P193();
return;