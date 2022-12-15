**free

ctl-opt dftactgrp(*no);

dcl-pi P4562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3857.rpgleinc'
/copy 'qrpgleref/P2506.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P4562';
dsply theCharVar;
P3857();
P2506();
P797();
return;