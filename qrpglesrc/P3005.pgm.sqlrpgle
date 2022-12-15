**free

ctl-opt dftactgrp(*no);

dcl-pi P3005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1054.rpgleinc'
/copy 'qrpgleref/P1017.rpgleinc'
/copy 'qrpgleref/P2398.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P3005';
dsply theCharVar;
P1054();
P1017();
P2398();
return;