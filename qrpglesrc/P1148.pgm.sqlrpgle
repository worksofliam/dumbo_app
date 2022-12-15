**free

ctl-opt dftactgrp(*no);

dcl-pi P1148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P780.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'
/copy 'qrpgleref/P508.rpgleinc'

dcl-ds theTable extname('T723') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T723 LIMIT 1;

theCharVar = 'Hello from P1148';
dsply theCharVar;
P780();
P820();
P508();
return;