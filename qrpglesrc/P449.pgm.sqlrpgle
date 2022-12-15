**free

ctl-opt dftactgrp(*no);

dcl-pi P449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'

dcl-ds theTable extname('T181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T181 LIMIT 1;

theCharVar = 'Hello from P449';
dsply theCharVar;
P339();
P383();
P364();
return;