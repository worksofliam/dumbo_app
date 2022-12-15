**free

ctl-opt dftactgrp(*no);

dcl-pi P2159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P1253.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P2159';
dsply theCharVar;
P642();
P1253();
P229();
return;