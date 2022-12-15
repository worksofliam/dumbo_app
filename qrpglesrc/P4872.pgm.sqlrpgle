**free

ctl-opt dftactgrp(*no);

dcl-pi P4872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P1600.rpgleinc'
/copy 'qrpgleref/P2996.rpgleinc'

dcl-ds theTable extname('T868') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T868 LIMIT 1;

theCharVar = 'Hello from P4872';
dsply theCharVar;
P580();
P1600();
P2996();
return;