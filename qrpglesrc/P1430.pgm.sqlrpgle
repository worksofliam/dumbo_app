**free

ctl-opt dftactgrp(*no);

dcl-pi P1430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'
/copy 'qrpgleref/P202.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P1430';
dsply theCharVar;
P943();
P1142();
P202();
return;