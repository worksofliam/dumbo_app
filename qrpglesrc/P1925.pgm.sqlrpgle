**free

ctl-opt dftactgrp(*no);

dcl-pi P1925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P1871.rpgleinc'

dcl-ds theTable extname('T1060') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1060 LIMIT 1;

theCharVar = 'Hello from P1925';
dsply theCharVar;
P231();
P903();
P1871();
return;