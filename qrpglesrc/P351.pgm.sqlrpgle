**free

ctl-opt dftactgrp(*no);

dcl-pi P351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P351';
dsply theCharVar;
P72();
P145();
P277();
return;