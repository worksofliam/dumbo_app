**free

ctl-opt dftactgrp(*no);

dcl-pi P3636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1744.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'

dcl-ds theTable extname('T1052') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1052 LIMIT 1;

theCharVar = 'Hello from P3636';
dsply theCharVar;
P1744();
P163();
P1566();
return;