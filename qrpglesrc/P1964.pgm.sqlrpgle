**free

ctl-opt dftactgrp(*no);

dcl-pi P1964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1728.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'

dcl-ds theTable extname('T894') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T894 LIMIT 1;

theCharVar = 'Hello from P1964';
dsply theCharVar;
P1728();
P967();
P1505();
return;