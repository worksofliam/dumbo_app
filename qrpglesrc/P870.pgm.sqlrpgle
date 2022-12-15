**free

ctl-opt dftactgrp(*no);

dcl-pi P870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T7') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T7 LIMIT 1;

theCharVar = 'Hello from P870';
dsply theCharVar;
P334();
P341();
P88();
return;