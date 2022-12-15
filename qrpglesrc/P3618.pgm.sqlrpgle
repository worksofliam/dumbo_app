**free

ctl-opt dftactgrp(*no);

dcl-pi P3618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3045.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T105 LIMIT 1;

theCharVar = 'Hello from P3618';
dsply theCharVar;
P3045();
P314();
P55();
return;