**free

ctl-opt dftactgrp(*no);

dcl-pi P5613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4432.rpgleinc'
/copy 'qrpgleref/P2887.rpgleinc'
/copy 'qrpgleref/P4073.rpgleinc'

dcl-ds theTable extname('T461') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T461 LIMIT 1;

theCharVar = 'Hello from P5613';
dsply theCharVar;
P4432();
P2887();
P4073();
return;