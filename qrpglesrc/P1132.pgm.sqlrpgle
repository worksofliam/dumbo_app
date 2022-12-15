**free

ctl-opt dftactgrp(*no);

dcl-pi P1132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P1132';
dsply theCharVar;
P755();
P882();
P372();
return;