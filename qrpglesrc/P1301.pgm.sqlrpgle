**free

ctl-opt dftactgrp(*no);

dcl-pi P1301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P996.rpgleinc'
/copy 'qrpgleref/P1290.rpgleinc'

dcl-ds theTable extname('T525') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T525 LIMIT 1;

theCharVar = 'Hello from P1301';
dsply theCharVar;
P963();
P996();
P1290();
return;