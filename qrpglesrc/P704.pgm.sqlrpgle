**free

ctl-opt dftactgrp(*no);

dcl-pi P704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P704';
dsply theCharVar;
P190();
P71();
P643();
return;