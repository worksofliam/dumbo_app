**free

ctl-opt dftactgrp(*no);

dcl-pi P3729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3634.rpgleinc'
/copy 'qrpgleref/P2076.rpgleinc'
/copy 'qrpgleref/P1148.rpgleinc'

dcl-ds theTable extname('T451') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T451 LIMIT 1;

theCharVar = 'Hello from P3729';
dsply theCharVar;
P3634();
P2076();
P1148();
return;