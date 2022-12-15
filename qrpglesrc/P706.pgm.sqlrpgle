**free

ctl-opt dftactgrp(*no);

dcl-pi P706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P706';
dsply theCharVar;
P659();
P181();
P604();
return;