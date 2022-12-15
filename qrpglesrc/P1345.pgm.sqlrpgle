**free

ctl-opt dftactgrp(*no);

dcl-pi P1345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1090.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P1119.rpgleinc'

dcl-ds theTable extname('T1713') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1713 LIMIT 1;

theCharVar = 'Hello from P1345';
dsply theCharVar;
P1090();
P789();
P1119();
return;