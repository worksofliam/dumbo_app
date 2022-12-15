**free

ctl-opt dftactgrp(*no);

dcl-pi P652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'

dcl-ds theTable extname('T2') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T2 LIMIT 1;

theCharVar = 'Hello from P652';
dsply theCharVar;
P52();
P359();
P401();
return;