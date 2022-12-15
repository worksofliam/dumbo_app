**free

ctl-opt dftactgrp(*no);

dcl-pi P565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P565';
dsply theCharVar;
P512();
P329();
P165();
return;