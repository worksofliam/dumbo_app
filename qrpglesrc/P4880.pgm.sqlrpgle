**free

ctl-opt dftactgrp(*no);

dcl-pi P4880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3405.rpgleinc'
/copy 'qrpgleref/P2040.rpgleinc'
/copy 'qrpgleref/P3888.rpgleinc'

dcl-ds theTable extname('T1853') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1853 LIMIT 1;

theCharVar = 'Hello from P4880';
dsply theCharVar;
P3405();
P2040();
P3888();
return;