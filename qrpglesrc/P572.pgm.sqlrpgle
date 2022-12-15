**free

ctl-opt dftactgrp(*no);

dcl-pi P572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T1046') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1046 LIMIT 1;

theCharVar = 'Hello from P572';
dsply theCharVar;
P22();
P397();
P103();
return;