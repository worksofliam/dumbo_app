**free

ctl-opt dftactgrp(*no);

dcl-pi P811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'

dcl-ds theTable extname('T432') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T432 LIMIT 1;

theCharVar = 'Hello from P811';
dsply theCharVar;
P386();
P154();
P786();
return;