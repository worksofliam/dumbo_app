**free

ctl-opt dftactgrp(*no);

dcl-pi P1271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'

dcl-ds theTable extname('T819') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T819 LIMIT 1;

theCharVar = 'Hello from P1271';
dsply theCharVar;
P337();
P101();
P863();
return;