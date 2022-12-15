**free

ctl-opt dftactgrp(*no);

dcl-pi P2126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1938.rpgleinc'
/copy 'qrpgleref/P1422.rpgleinc'
/copy 'qrpgleref/P1741.rpgleinc'

dcl-ds theTable extname('T1619') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1619 LIMIT 1;

theCharVar = 'Hello from P2126';
dsply theCharVar;
P1938();
P1422();
P1741();
return;