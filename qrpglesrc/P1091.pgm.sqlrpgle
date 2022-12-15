**free

ctl-opt dftactgrp(*no);

dcl-pi P1091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1041.rpgleinc'
/copy 'qrpgleref/P823.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'

dcl-ds theTable extname('T393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T393 LIMIT 1;

theCharVar = 'Hello from P1091';
dsply theCharVar;
P1041();
P823();
P344();
return;