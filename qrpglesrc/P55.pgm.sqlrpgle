**free

ctl-opt dftactgrp(*no);

dcl-pi P55;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T443') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T443 LIMIT 1;

theCharVar = 'Hello from P55';
dsply theCharVar;
P38();
P23();
P25();
return;