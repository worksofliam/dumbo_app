**free

ctl-opt dftactgrp(*no);

dcl-pi P2171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1486.rpgleinc'
/copy 'qrpgleref/P1522.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'

dcl-ds theTable extname('T1109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1109 LIMIT 1;

theCharVar = 'Hello from P2171';
dsply theCharVar;
P1486();
P1522();
P153();
return;