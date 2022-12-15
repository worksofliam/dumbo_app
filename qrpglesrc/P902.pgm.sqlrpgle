**free

ctl-opt dftactgrp(*no);

dcl-pi P902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds theTable extname('T256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T256 LIMIT 1;

theCharVar = 'Hello from P902';
dsply theCharVar;
P816();
P541();
P130();
return;