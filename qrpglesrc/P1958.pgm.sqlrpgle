**free

ctl-opt dftactgrp(*no);

dcl-pi P1958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1623.rpgleinc'
/copy 'qrpgleref/P1466.rpgleinc'
/copy 'qrpgleref/P1840.rpgleinc'

dcl-ds theTable extname('T788') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T788 LIMIT 1;

theCharVar = 'Hello from P1958';
dsply theCharVar;
P1623();
P1466();
P1840();
return;