**free

ctl-opt dftactgrp(*no);

dcl-pi P5020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5008.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'

dcl-ds theTable extname('T735') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T735 LIMIT 1;

theCharVar = 'Hello from P5020';
dsply theCharVar;
P5008();
P345();
P321();
return;