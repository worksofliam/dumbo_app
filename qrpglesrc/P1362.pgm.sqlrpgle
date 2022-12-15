**free

ctl-opt dftactgrp(*no);

dcl-pi P1362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'

dcl-ds theTable extname('T1240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1240 LIMIT 1;

theCharVar = 'Hello from P1362';
dsply theCharVar;
P1183();
P137();
P642();
return;