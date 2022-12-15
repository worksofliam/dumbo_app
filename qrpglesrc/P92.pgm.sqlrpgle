**free

ctl-opt dftactgrp(*no);

dcl-pi P92;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T1245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1245 LIMIT 1;

theCharVar = 'Hello from P92';
dsply theCharVar;
P75();
P42();
P84();
return;