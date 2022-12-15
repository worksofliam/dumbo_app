**free

ctl-opt dftactgrp(*no);

dcl-pi P4061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P2867.rpgleinc'

dcl-ds theTable extname('T384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T384 LIMIT 1;

theCharVar = 'Hello from P4061';
dsply theCharVar;
P569();
P433();
P2867();
return;