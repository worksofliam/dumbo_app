**free

ctl-opt dftactgrp(*no);

dcl-pi P1854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T959') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T959 LIMIT 1;

theCharVar = 'Hello from P1854';
dsply theCharVar;
P298();
P235();
P458();
return;