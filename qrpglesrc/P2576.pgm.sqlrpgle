**free

ctl-opt dftactgrp(*no);

dcl-pi P2576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2520.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P1101.rpgleinc'

dcl-ds theTable extname('T684') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T684 LIMIT 1;

theCharVar = 'Hello from P2576';
dsply theCharVar;
P2520();
P377();
P1101();
return;