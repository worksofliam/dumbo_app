**free

ctl-opt dftactgrp(*no);

dcl-pi P3382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P1866.rpgleinc'

dcl-ds theTable extname('T315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T315 LIMIT 1;

theCharVar = 'Hello from P3382';
dsply theCharVar;
P424();
P258();
P1866();
return;