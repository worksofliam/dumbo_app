**free

ctl-opt dftactgrp(*no);

dcl-pi P5602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3894.rpgleinc'
/copy 'qrpgleref/P3549.rpgleinc'
/copy 'qrpgleref/P3626.rpgleinc'

dcl-ds theTable extname('T397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T397 LIMIT 1;

theCharVar = 'Hello from P5602';
dsply theCharVar;
P3894();
P3549();
P3626();
return;