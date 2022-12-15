**free

ctl-opt dftactgrp(*no);

dcl-pi P235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds theTable extname('T78') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T78 LIMIT 1;

theCharVar = 'Hello from P235';
dsply theCharVar;
P77();
P233();
P183();
return;