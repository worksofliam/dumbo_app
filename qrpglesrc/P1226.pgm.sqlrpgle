**free

ctl-opt dftactgrp(*no);

dcl-pi P1226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'

dcl-ds theTable extname('T378') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T378 LIMIT 1;

theCharVar = 'Hello from P1226';
dsply theCharVar;
P743();
P1155();
P455();
return;