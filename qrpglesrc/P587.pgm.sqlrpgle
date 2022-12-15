**free

ctl-opt dftactgrp(*no);

dcl-pi P587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds theTable extname('T311') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T311 LIMIT 1;

theCharVar = 'Hello from P587';
dsply theCharVar;
P251();
P498();
P133();
return;