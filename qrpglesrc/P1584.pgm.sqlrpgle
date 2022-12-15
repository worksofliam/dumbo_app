**free

ctl-opt dftactgrp(*no);

dcl-pi P1584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P1272.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds theTable extname('T375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T375 LIMIT 1;

theCharVar = 'Hello from P1584';
dsply theCharVar;
P922();
P1272();
P251();
return;