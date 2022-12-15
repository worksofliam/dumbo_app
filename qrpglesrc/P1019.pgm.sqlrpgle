**free

ctl-opt dftactgrp(*no);

dcl-pi P1019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'

dcl-ds theTable extname('T696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T696 LIMIT 1;

theCharVar = 'Hello from P1019';
dsply theCharVar;
P171();
P196();
P206();
return;