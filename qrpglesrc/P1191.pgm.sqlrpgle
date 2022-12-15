**free

ctl-opt dftactgrp(*no);

dcl-pi P1191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P815.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P1191';
dsply theCharVar;
P223();
P438();
P815();
return;