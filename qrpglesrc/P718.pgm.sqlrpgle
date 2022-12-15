**free

ctl-opt dftactgrp(*no);

dcl-pi P718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds theTable extname('T1759') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1759 LIMIT 1;

theCharVar = 'Hello from P718';
dsply theCharVar;
P177();
P10();
P138();
return;