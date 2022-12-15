**free

ctl-opt dftactgrp(*no);

dcl-pi P4676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4510.rpgleinc'
/copy 'qrpgleref/P1645.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P4676';
dsply theCharVar;
P4510();
P1645();
P482();
return;