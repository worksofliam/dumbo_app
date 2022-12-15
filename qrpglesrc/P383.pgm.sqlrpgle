**free

ctl-opt dftactgrp(*no);

dcl-pi P383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P383';
dsply theCharVar;
P269();
P8();
P168();
return;