**free

ctl-opt dftactgrp(*no);

dcl-pi P5507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3169.rpgleinc'
/copy 'qrpgleref/P4339.rpgleinc'
/copy 'qrpgleref/P1258.rpgleinc'

dcl-ds theTable extname('T608') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T608 LIMIT 1;

theCharVar = 'Hello from P5507';
dsply theCharVar;
P3169();
P4339();
P1258();
return;