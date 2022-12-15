**free

ctl-opt dftactgrp(*no);

dcl-pi P1792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P1358.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds theTable extname('T797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T797 LIMIT 1;

theCharVar = 'Hello from P1792';
dsply theCharVar;
P683();
P1358();
P359();
return;