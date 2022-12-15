**free

ctl-opt dftactgrp(*no);

dcl-pi P2798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2164.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P1816.rpgleinc'

dcl-ds theTable extname('T1015') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1015 LIMIT 1;

theCharVar = 'Hello from P2798';
dsply theCharVar;
P2164();
P711();
P1816();
return;