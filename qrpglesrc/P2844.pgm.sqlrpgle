**free

ctl-opt dftactgrp(*no);

dcl-pi P2844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2182.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P1244.rpgleinc'

dcl-ds theTable extname('T269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T269 LIMIT 1;

theCharVar = 'Hello from P2844';
dsply theCharVar;
P2182();
P276();
P1244();
return;