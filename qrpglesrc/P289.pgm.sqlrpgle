**free

ctl-opt dftactgrp(*no);

dcl-pi P289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T193 LIMIT 1;

theCharVar = 'Hello from P289';
dsply theCharVar;
P90();
P202();
P162();
return;