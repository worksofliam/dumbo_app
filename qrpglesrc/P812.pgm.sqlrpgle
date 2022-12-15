**free

ctl-opt dftactgrp(*no);

dcl-pi P812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'

dcl-ds theTable extname('T505') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T505 LIMIT 1;

theCharVar = 'Hello from P812';
dsply theCharVar;
P366();
P162();
P602();
return;