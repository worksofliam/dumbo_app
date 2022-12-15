**free

ctl-opt dftactgrp(*no);

dcl-pi P2809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2491.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'

dcl-ds theTable extname('T902') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T902 LIMIT 1;

theCharVar = 'Hello from P2809';
dsply theCharVar;
P2491();
P1116();
P863();
return;