**free

ctl-opt dftactgrp(*no);

dcl-pi P3407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P2620.rpgleinc'
/copy 'qrpgleref/P1882.rpgleinc'

dcl-ds theTable extname('T453') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T453 LIMIT 1;

theCharVar = 'Hello from P3407';
dsply theCharVar;
P1396();
P2620();
P1882();
return;