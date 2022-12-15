**free

ctl-opt dftactgrp(*no);

dcl-pi P2082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1649.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'

dcl-ds theTable extname('T1720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1720 LIMIT 1;

theCharVar = 'Hello from P2082';
dsply theCharVar;
P1649();
P756();
P752();
return;