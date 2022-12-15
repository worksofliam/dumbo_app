**free

ctl-opt dftactgrp(*no);

dcl-pi P4988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3443.rpgleinc'
/copy 'qrpgleref/P2683.rpgleinc'
/copy 'qrpgleref/P2857.rpgleinc'

dcl-ds theTable extname('T740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T740 LIMIT 1;

theCharVar = 'Hello from P4988';
dsply theCharVar;
P3443();
P2683();
P2857();
return;