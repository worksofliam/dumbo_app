**free

ctl-opt dftactgrp(*no);

dcl-pi P773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P748.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T478') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T478 LIMIT 1;

theCharVar = 'Hello from P773';
dsply theCharVar;
P748();
P453();
P288();
return;