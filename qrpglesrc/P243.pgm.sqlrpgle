**free

ctl-opt dftactgrp(*no);

dcl-pi P243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P243';
dsply theCharVar;
P173();
P194();
P178();
return;