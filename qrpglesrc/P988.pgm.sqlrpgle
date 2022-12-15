**free

ctl-opt dftactgrp(*no);

dcl-pi P988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P988';
dsply theCharVar;
P260();
P661();
P577();
return;