**free

ctl-opt dftactgrp(*no);

dcl-pi P1649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1130.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P1426.rpgleinc'

dcl-ds theTable extname('T1336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1336 LIMIT 1;

theCharVar = 'Hello from P1649';
dsply theCharVar;
P1130();
P67();
P1426();
return;