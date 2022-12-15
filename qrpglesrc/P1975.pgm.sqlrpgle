**free

ctl-opt dftactgrp(*no);

dcl-pi P1975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1853.rpgleinc'
/copy 'qrpgleref/P1488.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'

dcl-ds theTable extname('T410') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T410 LIMIT 1;

theCharVar = 'Hello from P1975';
dsply theCharVar;
P1853();
P1488();
P1153();
return;