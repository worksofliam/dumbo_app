**free

ctl-opt dftactgrp(*no);

dcl-pi P572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds theTable extname('T355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T355 LIMIT 1;

theCharVar = 'Hello from P572';
dsply theCharVar;
P212();
P107();
P243();
return;