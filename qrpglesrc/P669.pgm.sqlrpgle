**free

ctl-opt dftactgrp(*no);

dcl-pi P669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'

dcl-ds theTable extname('T274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T274 LIMIT 1;

theCharVar = 'Hello from P669';
dsply theCharVar;
P503();
P611();
P267();
return;