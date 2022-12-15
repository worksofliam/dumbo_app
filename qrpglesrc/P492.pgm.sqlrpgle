**free

ctl-opt dftactgrp(*no);

dcl-pi P492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P492';
dsply theCharVar;
P45();
P342();
P334();
return;