**free

ctl-opt dftactgrp(*no);

dcl-pi P342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'

dcl-ds theTable extname('T85') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T85 LIMIT 1;

theCharVar = 'Hello from P342';
dsply theCharVar;
P224();
P50();
P275();
return;