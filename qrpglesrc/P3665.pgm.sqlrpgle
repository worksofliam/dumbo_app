**free

ctl-opt dftactgrp(*no);

dcl-pi P3665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P1056.rpgleinc'
/copy 'qrpgleref/P1542.rpgleinc'

dcl-ds theTable extname('T684') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T684 LIMIT 1;

theCharVar = 'Hello from P3665';
dsply theCharVar;
P215();
P1056();
P1542();
return;