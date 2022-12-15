**free

ctl-opt dftactgrp(*no);

dcl-pi P3644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3546.rpgleinc'
/copy 'qrpgleref/P872.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T159') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T159 LIMIT 1;

theCharVar = 'Hello from P3644';
dsply theCharVar;
P3546();
P872();
P109();
return;