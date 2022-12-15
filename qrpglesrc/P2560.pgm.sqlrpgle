**free

ctl-opt dftactgrp(*no);

dcl-pi P2560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1733.rpgleinc'
/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P1889.rpgleinc'

dcl-ds theTable extname('T1851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1851 LIMIT 1;

theCharVar = 'Hello from P2560';
dsply theCharVar;
P1733();
P1342();
P1889();
return;