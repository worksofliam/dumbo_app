**free

ctl-opt dftactgrp(*no);

dcl-pi P1691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds theTable extname('T779') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T779 LIMIT 1;

theCharVar = 'Hello from P1691';
dsply theCharVar;
P1104();
P317();
P621();
return;