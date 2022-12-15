**free

ctl-opt dftactgrp(*no);

dcl-pi P3081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3071.rpgleinc'
/copy 'qrpgleref/P2180.rpgleinc'
/copy 'qrpgleref/P3065.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P3081';
dsply theCharVar;
P3071();
P2180();
P3065();
return;