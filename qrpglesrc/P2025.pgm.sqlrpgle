**free

ctl-opt dftactgrp(*no);

dcl-pi P2025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1731.rpgleinc'
/copy 'qrpgleref/P1050.rpgleinc'
/copy 'qrpgleref/P1086.rpgleinc'

dcl-ds theTable extname('T811') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T811 LIMIT 1;

theCharVar = 'Hello from P2025';
dsply theCharVar;
P1731();
P1050();
P1086();
return;