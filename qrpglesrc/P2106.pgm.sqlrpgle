**free

ctl-opt dftactgrp(*no);

dcl-pi P2106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P1728.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T1866') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1866 LIMIT 1;

theCharVar = 'Hello from P2106';
dsply theCharVar;
P844();
P1728();
P135();
return;