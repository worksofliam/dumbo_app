**free

ctl-opt dftactgrp(*no);

dcl-pi P3211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1098.rpgleinc'
/copy 'qrpgleref/P2346.rpgleinc'
/copy 'qrpgleref/P2492.rpgleinc'

dcl-ds theTable extname('T497') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T497 LIMIT 1;

theCharVar = 'Hello from P3211';
dsply theCharVar;
P1098();
P2346();
P2492();
return;