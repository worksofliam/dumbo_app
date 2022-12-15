**free

ctl-opt dftactgrp(*no);

dcl-pi P5078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2691.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds theTable extname('T1189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1189 LIMIT 1;

theCharVar = 'Hello from P5078';
dsply theCharVar;
P2691();
P785();
P60();
return;