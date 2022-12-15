**free

ctl-opt dftactgrp(*no);

dcl-pi P963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'

dcl-ds theTable extname('T224') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T224 LIMIT 1;

theCharVar = 'Hello from P963';
dsply theCharVar;
P611();
P345();
P525();
return;