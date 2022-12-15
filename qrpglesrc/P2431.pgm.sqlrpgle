**free

ctl-opt dftactgrp(*no);

dcl-pi P2431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P751.rpgleinc'
/copy 'qrpgleref/P2224.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'

dcl-ds theTable extname('T1452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1452 LIMIT 1;

theCharVar = 'Hello from P2431';
dsply theCharVar;
P751();
P2224();
P700();
return;