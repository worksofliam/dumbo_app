**free

ctl-opt dftactgrp(*no);

dcl-pi P740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P735.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'

dcl-ds theTable extname('T894') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T894 LIMIT 1;

theCharVar = 'Hello from P740';
dsply theCharVar;
P735();
P521();
P526();
return;