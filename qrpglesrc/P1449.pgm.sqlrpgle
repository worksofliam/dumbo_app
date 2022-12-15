**free

ctl-opt dftactgrp(*no);

dcl-pi P1449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P775.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'

dcl-ds theTable extname('T937') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T937 LIMIT 1;

theCharVar = 'Hello from P1449';
dsply theCharVar;
P775();
P756();
P381();
return;