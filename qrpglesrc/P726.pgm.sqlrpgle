**free

ctl-opt dftactgrp(*no);

dcl-pi P726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T673') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T673 LIMIT 1;

theCharVar = 'Hello from P726';
dsply theCharVar;
P521();
P339();
P37();
return;