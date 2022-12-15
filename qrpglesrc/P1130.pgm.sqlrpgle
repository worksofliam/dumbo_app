**free

ctl-opt dftactgrp(*no);

dcl-pi P1130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T288 LIMIT 1;

theCharVar = 'Hello from P1130';
dsply theCharVar;
P476();
P850();
P53();
return;