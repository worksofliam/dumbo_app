**free

ctl-opt dftactgrp(*no);

dcl-pi P66;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T703 LIMIT 1;

theCharVar = 'Hello from P66';
dsply theCharVar;
P24();
P2();
P27();
return;