**free

ctl-opt dftactgrp(*no);

dcl-pi P229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds theTable extname('T1041') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1041 LIMIT 1;

theCharVar = 'Hello from P229';
dsply theCharVar;
P96();
P28();
P194();
return;