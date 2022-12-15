**free

ctl-opt dftactgrp(*no);

dcl-pi P1777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'
/copy 'qrpgleref/P1338.rpgleinc'

dcl-ds theTable extname('T470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T470 LIMIT 1;

theCharVar = 'Hello from P1777';
dsply theCharVar;
P1136();
P775();
P1338();
return;