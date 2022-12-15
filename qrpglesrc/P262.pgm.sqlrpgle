**free

ctl-opt dftactgrp(*no);

dcl-pi P262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P262';
dsply theCharVar;
P199();
P151();
P182();
return;