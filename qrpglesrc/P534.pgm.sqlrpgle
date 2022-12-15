**free

ctl-opt dftactgrp(*no);

dcl-pi P534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'

dcl-ds theTable extname('T899') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T899 LIMIT 1;

theCharVar = 'Hello from P534';
dsply theCharVar;
P519();
P383();
P283();
return;