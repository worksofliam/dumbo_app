**free

ctl-opt dftactgrp(*no);

dcl-pi P1712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1681.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'

dcl-ds theTable extname('T171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T171 LIMIT 1;

theCharVar = 'Hello from P1712';
dsply theCharVar;
P1681();
P1229();
P900();
return;