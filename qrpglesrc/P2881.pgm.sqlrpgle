**free

ctl-opt dftactgrp(*no);

dcl-pi P2881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'

dcl-ds theTable extname('T596') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T596 LIMIT 1;

theCharVar = 'Hello from P2881';
dsply theCharVar;
P383();
P350();
P1000();
return;