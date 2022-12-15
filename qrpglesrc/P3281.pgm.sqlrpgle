**free

ctl-opt dftactgrp(*no);

dcl-pi P3281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P1808.rpgleinc'
/copy 'qrpgleref/P1565.rpgleinc'

dcl-ds theTable extname('T577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T577 LIMIT 1;

theCharVar = 'Hello from P3281';
dsply theCharVar;
P1116();
P1808();
P1565();
return;