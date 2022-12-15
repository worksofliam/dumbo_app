**free

ctl-opt dftactgrp(*no);

dcl-pi P2018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1124.rpgleinc'
/copy 'qrpgleref/P1711.rpgleinc'
/copy 'qrpgleref/P1768.rpgleinc'

dcl-ds theTable extname('T772') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T772 LIMIT 1;

theCharVar = 'Hello from P2018';
dsply theCharVar;
P1124();
P1711();
P1768();
return;