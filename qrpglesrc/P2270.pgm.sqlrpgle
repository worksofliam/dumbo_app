**free

ctl-opt dftactgrp(*no);

dcl-pi P2270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1797.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds theTable extname('T1201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1201 LIMIT 1;

theCharVar = 'Hello from P2270';
dsply theCharVar;
P1797();
P1242();
P716();
return;