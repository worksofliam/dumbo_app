**free

ctl-opt dftactgrp(*no);

dcl-pi P1807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1554.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'

dcl-ds theTable extname('T1811') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1811 LIMIT 1;

theCharVar = 'Hello from P1807';
dsply theCharVar;
P1554();
P386();
P554();
return;