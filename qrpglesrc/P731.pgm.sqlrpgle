**free

ctl-opt dftactgrp(*no);

dcl-pi P731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds theTable extname('T1104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1104 LIMIT 1;

theCharVar = 'Hello from P731';
dsply theCharVar;
P22();
P596();
P515();
return;