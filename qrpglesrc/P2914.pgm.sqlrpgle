**free

ctl-opt dftactgrp(*no);

dcl-pi P2914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds theTable extname('T274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T274 LIMIT 1;

theCharVar = 'Hello from P2914';
dsply theCharVar;
P28();
P1207();
P486();
return;