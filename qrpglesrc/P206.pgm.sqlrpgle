**free

ctl-opt dftactgrp(*no);

dcl-pi P206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds theTable extname('T323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T323 LIMIT 1;

theCharVar = 'Hello from P206';
dsply theCharVar;
P183();
P25();
P150();
return;