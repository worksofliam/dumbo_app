**free

ctl-opt dftactgrp(*no);

dcl-pi P2691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1610.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P2090.rpgleinc'

dcl-ds theTable extname('T903') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T903 LIMIT 1;

theCharVar = 'Hello from P2691';
dsply theCharVar;
P1610();
P33();
P2090();
return;