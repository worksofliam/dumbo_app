**free

ctl-opt dftactgrp(*no);

dcl-pi P3279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1213.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'
/copy 'qrpgleref/P2020.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P3279';
dsply theCharVar;
P1213();
P1732();
P2020();
return;