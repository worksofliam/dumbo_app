**free

ctl-opt dftactgrp(*no);

dcl-pi P4710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3409.rpgleinc'
/copy 'qrpgleref/P1698.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds theTable extname('T359') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T359 LIMIT 1;

theCharVar = 'Hello from P4710';
dsply theCharVar;
P3409();
P1698();
P515();
return;