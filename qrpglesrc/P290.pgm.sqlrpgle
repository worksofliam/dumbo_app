**free

ctl-opt dftactgrp(*no);

dcl-pi P290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P290';
dsply theCharVar;
P181();
P37();
P44();
return;