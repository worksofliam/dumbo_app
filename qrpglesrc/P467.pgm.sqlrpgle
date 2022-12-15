**free

ctl-opt dftactgrp(*no);

dcl-pi P467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P467';
dsply theCharVar;
P402();
P399();
P216();
return;