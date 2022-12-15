**free

ctl-opt dftactgrp(*no);

dcl-pi P3624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1770.rpgleinc'
/copy 'qrpgleref/P1895.rpgleinc'
/copy 'qrpgleref/P2405.rpgleinc'

dcl-ds theTable extname('T907') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T907 LIMIT 1;

theCharVar = 'Hello from P3624';
dsply theCharVar;
P1770();
P1895();
P2405();
return;