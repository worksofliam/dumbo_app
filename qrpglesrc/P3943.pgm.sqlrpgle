**free

ctl-opt dftactgrp(*no);

dcl-pi P3943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3210.rpgleinc'
/copy 'qrpgleref/P3034.rpgleinc'
/copy 'qrpgleref/P3489.rpgleinc'

dcl-ds theTable extname('T1807') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1807 LIMIT 1;

theCharVar = 'Hello from P3943';
dsply theCharVar;
P3210();
P3034();
P3489();
return;