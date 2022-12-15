**free

ctl-opt dftactgrp(*no);

dcl-pi P1838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1395.rpgleinc'
/copy 'qrpgleref/P1775.rpgleinc'
/copy 'qrpgleref/P1420.rpgleinc'

dcl-ds theTable extname('T1198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1198 LIMIT 1;

theCharVar = 'Hello from P1838';
dsply theCharVar;
P1395();
P1775();
P1420();
return;