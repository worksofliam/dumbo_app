**free

ctl-opt dftactgrp(*no);

dcl-pi P3463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2309.rpgleinc'
/copy 'qrpgleref/P1565.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T820') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T820 LIMIT 1;

theCharVar = 'Hello from P3463';
dsply theCharVar;
P2309();
P1565();
P313();
return;