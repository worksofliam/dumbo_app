**free

ctl-opt dftactgrp(*no);

dcl-pi P2858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1252.rpgleinc'
/copy 'qrpgleref/P1600.rpgleinc'
/copy 'qrpgleref/P1610.rpgleinc'

dcl-ds theTable extname('T309') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T309 LIMIT 1;

theCharVar = 'Hello from P2858';
dsply theCharVar;
P1252();
P1600();
P1610();
return;