**free

ctl-opt dftactgrp(*no);

dcl-pi P699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P644.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P699';
dsply theCharVar;
P644();
P687();
P621();
return;