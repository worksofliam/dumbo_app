**free

ctl-opt dftactgrp(*no);

dcl-pi P525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds theTable extname('T151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T151 LIMIT 1;

theCharVar = 'Hello from P525';
dsply theCharVar;
P155();
P407();
P377();
return;