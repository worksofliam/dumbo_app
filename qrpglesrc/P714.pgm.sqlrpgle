**free

ctl-opt dftactgrp(*no);

dcl-pi P714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P681.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P714';
dsply theCharVar;
P566();
P681();
P158();
return;