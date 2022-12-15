**free

ctl-opt dftactgrp(*no);

dcl-pi P445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P445';
dsply theCharVar;
P129();
P303();
P172();
return;