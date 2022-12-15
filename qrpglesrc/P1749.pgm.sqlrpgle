**free

ctl-opt dftactgrp(*no);

dcl-pi P1749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P681.rpgleinc'
/copy 'qrpgleref/P1661.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P1749';
dsply theCharVar;
P184();
P681();
P1661();
return;