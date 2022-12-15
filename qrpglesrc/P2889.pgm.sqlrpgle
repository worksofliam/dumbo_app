**free

ctl-opt dftactgrp(*no);

dcl-pi P2889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P1769.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'

dcl-ds theTable extname('T1296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1296 LIMIT 1;

theCharVar = 'Hello from P2889';
dsply theCharVar;
P379();
P1769();
P396();
return;