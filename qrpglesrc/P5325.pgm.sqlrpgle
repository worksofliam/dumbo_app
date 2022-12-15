**free

ctl-opt dftactgrp(*no);

dcl-pi P5325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'

dcl-ds theTable extname('T1604') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1604 LIMIT 1;

theCharVar = 'Hello from P5325';
dsply theCharVar;
P2058();
P910();
P482();
return;