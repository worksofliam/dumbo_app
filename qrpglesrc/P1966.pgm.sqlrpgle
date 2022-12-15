**free

ctl-opt dftactgrp(*no);

dcl-pi P1966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T755 LIMIT 1;

theCharVar = 'Hello from P1966';
dsply theCharVar;
P1558();
P203();
P325();
return;