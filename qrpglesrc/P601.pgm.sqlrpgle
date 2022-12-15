**free

ctl-opt dftactgrp(*no);

dcl-pi P601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T407') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T407 LIMIT 1;

theCharVar = 'Hello from P601';
dsply theCharVar;
P165();
P221();
P169();
return;