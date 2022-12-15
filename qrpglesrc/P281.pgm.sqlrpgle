**free

ctl-opt dftactgrp(*no);

dcl-pi P281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T196 LIMIT 1;

theCharVar = 'Hello from P281';
dsply theCharVar;
P202();
P250();
P241();
return;