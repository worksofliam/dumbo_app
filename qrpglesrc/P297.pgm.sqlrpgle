**free

ctl-opt dftactgrp(*no);

dcl-pi P297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T493 LIMIT 1;

theCharVar = 'Hello from P297';
dsply theCharVar;
P180();
P34();
P213();
return;