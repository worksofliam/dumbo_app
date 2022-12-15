**free

ctl-opt dftactgrp(*no);

dcl-pi P5049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P2067.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'

dcl-ds theTable extname('T1319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1319 LIMIT 1;

theCharVar = 'Hello from P5049';
dsply theCharVar;
P223();
P2067();
P425();
return;