**free

ctl-opt dftactgrp(*no);

dcl-pi P166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T331 LIMIT 1;

theCharVar = 'Hello from P166';
dsply theCharVar;
P54();
P111();
P88();
return;