**free

ctl-opt dftactgrp(*no);

dcl-pi P1580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P1213.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'

dcl-ds theTable extname('T1602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1602 LIMIT 1;

theCharVar = 'Hello from P1580';
dsply theCharVar;
P1003();
P1213();
P905();
return;