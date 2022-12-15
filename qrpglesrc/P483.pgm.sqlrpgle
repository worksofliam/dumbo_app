**free

ctl-opt dftactgrp(*no);

dcl-pi P483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds theTable extname('T662') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T662 LIMIT 1;

theCharVar = 'Hello from P483';
dsply theCharVar;
P39();
P383();
P375();
return;