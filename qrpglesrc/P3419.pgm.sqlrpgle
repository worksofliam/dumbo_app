**free

ctl-opt dftactgrp(*no);

dcl-pi P3419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P2271.rpgleinc'
/copy 'qrpgleref/P2638.rpgleinc'

dcl-ds theTable extname('T1644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1644 LIMIT 1;

theCharVar = 'Hello from P3419';
dsply theCharVar;
P1479();
P2271();
P2638();
return;