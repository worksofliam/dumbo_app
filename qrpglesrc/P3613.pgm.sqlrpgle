**free

ctl-opt dftactgrp(*no);

dcl-pi P3613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2092.rpgleinc'
/copy 'qrpgleref/P3473.rpgleinc'
/copy 'qrpgleref/P2015.rpgleinc'

dcl-ds theTable extname('T1235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1235 LIMIT 1;

theCharVar = 'Hello from P3613';
dsply theCharVar;
P2092();
P3473();
P2015();
return;