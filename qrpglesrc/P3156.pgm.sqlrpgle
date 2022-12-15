**free

ctl-opt dftactgrp(*no);

dcl-pi P3156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1166.rpgleinc'
/copy 'qrpgleref/P833.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds theTable extname('T940') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T940 LIMIT 1;

theCharVar = 'Hello from P3156';
dsply theCharVar;
P1166();
P833();
P437();
return;