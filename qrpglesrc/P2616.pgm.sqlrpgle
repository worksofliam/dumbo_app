**free

ctl-opt dftactgrp(*no);

dcl-pi P2616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P821.rpgleinc'
/copy 'qrpgleref/P1047.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'

dcl-ds theTable extname('T1662') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1662 LIMIT 1;

theCharVar = 'Hello from P2616';
dsply theCharVar;
P821();
P1047();
P564();
return;