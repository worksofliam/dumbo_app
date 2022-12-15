**free

ctl-opt dftactgrp(*no);

dcl-pi P3481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P3253.rpgleinc'

dcl-ds theTable extname('T1788') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1788 LIMIT 1;

theCharVar = 'Hello from P3481';
dsply theCharVar;
P334();
P1745();
P3253();
return;