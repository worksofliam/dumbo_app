**free

ctl-opt dftactgrp(*no);

dcl-pi P3185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'

dcl-ds theTable extname('T793') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T793 LIMIT 1;

theCharVar = 'Hello from P3185';
dsply theCharVar;
P77();
P1667();
P319();
return;