**free

ctl-opt dftactgrp(*no);

dcl-pi P4487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2489.rpgleinc'
/copy 'qrpgleref/P1903.rpgleinc'
/copy 'qrpgleref/P1023.rpgleinc'

dcl-ds theTable extname('T288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T288 LIMIT 1;

theCharVar = 'Hello from P4487';
dsply theCharVar;
P2489();
P1903();
P1023();
return;