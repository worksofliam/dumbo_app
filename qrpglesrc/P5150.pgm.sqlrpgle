**free

ctl-opt dftactgrp(*no);

dcl-pi P5150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P2084.rpgleinc'
/copy 'qrpgleref/P931.rpgleinc'

dcl-ds theTable extname('T583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T583 LIMIT 1;

theCharVar = 'Hello from P5150';
dsply theCharVar;
P541();
P2084();
P931();
return;