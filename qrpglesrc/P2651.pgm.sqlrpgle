**free

ctl-opt dftactgrp(*no);

dcl-pi P2651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P2206.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'

dcl-ds theTable extname('T713') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T713 LIMIT 1;

theCharVar = 'Hello from P2651';
dsply theCharVar;
P467();
P2206();
P1066();
return;