**free

ctl-opt dftactgrp(*no);

dcl-pi P2031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P977.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds theTable extname('T1588') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1588 LIMIT 1;

theCharVar = 'Hello from P2031';
dsply theCharVar;
P977();
P220();
P929();
return;