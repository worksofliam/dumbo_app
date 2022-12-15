**free

ctl-opt dftactgrp(*no);

dcl-pi P2261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P1898.rpgleinc'
/copy 'qrpgleref/P1315.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P2261';
dsply theCharVar;
P412();
P1898();
P1315();
return;