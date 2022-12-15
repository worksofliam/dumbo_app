**free

ctl-opt dftactgrp(*no);

dcl-pi P518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P518';
dsply theCharVar;
P130();
P214();
P492();
return;