**free

ctl-opt dftactgrp(*no);

dcl-pi P3170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3067.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'

dcl-ds theTable extname('T31') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T31 LIMIT 1;

theCharVar = 'Hello from P3170';
dsply theCharVar;
P3067();
P426();
P373();
return;