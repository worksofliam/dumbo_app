**free

ctl-opt dftactgrp(*no);

dcl-pi P651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds theTable extname('T466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T466 LIMIT 1;

theCharVar = 'Hello from P651';
dsply theCharVar;
P151();
P486();
P339();
return;