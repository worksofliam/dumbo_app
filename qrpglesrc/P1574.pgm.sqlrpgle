**free

ctl-opt dftactgrp(*no);

dcl-pi P1574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'

dcl-ds theTable extname('T404') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T404 LIMIT 1;

theCharVar = 'Hello from P1574';
dsply theCharVar;
P221();
P674();
P637();
return;