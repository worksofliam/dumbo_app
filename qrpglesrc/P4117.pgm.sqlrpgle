**free

ctl-opt dftactgrp(*no);

dcl-pi P4117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2207.rpgleinc'
/copy 'qrpgleref/P2377.rpgleinc'
/copy 'qrpgleref/P1987.rpgleinc'

dcl-ds theTable extname('T1218') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1218 LIMIT 1;

theCharVar = 'Hello from P4117';
dsply theCharVar;
P2207();
P2377();
P1987();
return;