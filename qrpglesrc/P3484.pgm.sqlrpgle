**free

ctl-opt dftactgrp(*no);

dcl-pi P3484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P2520.rpgleinc'

dcl-ds theTable extname('T566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T566 LIMIT 1;

theCharVar = 'Hello from P3484';
dsply theCharVar;
P42();
P1051();
P2520();
return;