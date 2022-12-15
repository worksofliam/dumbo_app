**free

ctl-opt dftactgrp(*no);

dcl-pi P402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P402';
dsply theCharVar;
P335();
P29();
P260();
return;