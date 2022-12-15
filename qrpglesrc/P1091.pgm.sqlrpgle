**free

ctl-opt dftactgrp(*no);

dcl-pi P1091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P919.rpgleinc'
/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'

dcl-ds theTable extname('T780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T780 LIMIT 1;

theCharVar = 'Hello from P1091';
dsply theCharVar;
P919();
P674();
P958();
return;