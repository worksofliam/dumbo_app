**free

ctl-opt dftactgrp(*no);

dcl-pi P1817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'

dcl-ds theTable extname('T1022') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1022 LIMIT 1;

theCharVar = 'Hello from P1817';
dsply theCharVar;
P1108();
P424();
P560();
return;