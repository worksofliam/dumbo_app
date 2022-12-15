**free

ctl-opt dftactgrp(*no);

dcl-pi P1579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1378.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds theTable extname('T242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T242 LIMIT 1;

theCharVar = 'Hello from P1579';
dsply theCharVar;
P1378();
P479();
P484();
return;