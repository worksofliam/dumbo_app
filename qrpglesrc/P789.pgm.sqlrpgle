**free

ctl-opt dftactgrp(*no);

dcl-pi P789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds theTable extname('T1189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1189 LIMIT 1;

theCharVar = 'Hello from P789';
dsply theCharVar;
P310();
P723();
P160();
return;