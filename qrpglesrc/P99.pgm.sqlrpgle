**free

ctl-opt dftactgrp(*no);

dcl-pi P99;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T174 LIMIT 1;

theCharVar = 'Hello from P99';
dsply theCharVar;
P34();
P51();
P23();
return;