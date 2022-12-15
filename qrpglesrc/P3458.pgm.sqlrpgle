**free

ctl-opt dftactgrp(*no);

dcl-pi P3458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2525.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P3121.rpgleinc'

dcl-ds theTable extname('T450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T450 LIMIT 1;

theCharVar = 'Hello from P3458';
dsply theCharVar;
P2525();
P113();
P3121();
return;