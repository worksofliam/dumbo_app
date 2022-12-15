**free

ctl-opt dftactgrp(*no);

dcl-pi P5244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4726.rpgleinc'
/copy 'qrpgleref/P3198.rpgleinc'
/copy 'qrpgleref/P4522.rpgleinc'

dcl-ds theTable extname('T886') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T886 LIMIT 1;

theCharVar = 'Hello from P5244';
dsply theCharVar;
P4726();
P3198();
P4522();
return;