**free

ctl-opt dftactgrp(*no);

dcl-pi P5088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2409.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P4204.rpgleinc'

dcl-ds theTable extname('T482') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T482 LIMIT 1;

theCharVar = 'Hello from P5088';
dsply theCharVar;
P2409();
P338();
P4204();
return;