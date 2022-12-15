**free

ctl-opt dftactgrp(*no);

dcl-pi P2176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1249.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P1503.rpgleinc'

dcl-ds theTable extname('T570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T570 LIMIT 1;

theCharVar = 'Hello from P2176';
dsply theCharVar;
P1249();
P467();
P1503();
return;