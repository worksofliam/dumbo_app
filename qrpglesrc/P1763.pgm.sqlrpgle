**free

ctl-opt dftactgrp(*no);

dcl-pi P1763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1556.rpgleinc'
/copy 'qrpgleref/P1629.rpgleinc'
/copy 'qrpgleref/P1014.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P1763';
dsply theCharVar;
P1556();
P1629();
P1014();
return;