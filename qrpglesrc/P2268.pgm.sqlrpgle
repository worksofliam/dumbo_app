**free

ctl-opt dftactgrp(*no);

dcl-pi P2268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P1554.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'

dcl-ds theTable extname('T858') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T858 LIMIT 1;

theCharVar = 'Hello from P2268';
dsply theCharVar;
P472();
P1554();
P473();
return;