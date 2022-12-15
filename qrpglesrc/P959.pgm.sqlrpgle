**free

ctl-opt dftactgrp(*no);

dcl-pi P959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds theTable extname('T461') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T461 LIMIT 1;

theCharVar = 'Hello from P959';
dsply theCharVar;
P671();
P255();
P437();
return;