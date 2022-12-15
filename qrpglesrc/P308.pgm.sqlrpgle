**free

ctl-opt dftactgrp(*no);

dcl-pi P308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds theTable extname('T1815') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1815 LIMIT 1;

theCharVar = 'Hello from P308';
dsply theCharVar;
P288();
P175();
P240();
return;