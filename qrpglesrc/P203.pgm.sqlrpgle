**free

ctl-opt dftactgrp(*no);

dcl-pi P203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T987') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T987 LIMIT 1;

theCharVar = 'Hello from P203';
dsply theCharVar;
P15();
P146();
P90();
return;