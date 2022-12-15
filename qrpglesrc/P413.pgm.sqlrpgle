**free

ctl-opt dftactgrp(*no);

dcl-pi P413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P413';
dsply theCharVar;
P213();
P238();
P340();
return;