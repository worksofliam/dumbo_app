**free

ctl-opt dftactgrp(*no);

dcl-pi P2712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1353.rpgleinc'
/copy 'qrpgleref/P1684.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T1037') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1037 LIMIT 1;

theCharVar = 'Hello from P2712';
dsply theCharVar;
P1353();
P1684();
P64();
return;