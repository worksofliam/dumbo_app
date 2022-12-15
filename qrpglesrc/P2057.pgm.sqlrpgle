**free

ctl-opt dftactgrp(*no);

dcl-pi P2057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1842.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P1502.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P2057';
dsply theCharVar;
P1842();
P1373();
P1502();
return;