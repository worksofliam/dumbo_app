**free

ctl-opt dftactgrp(*no);

dcl-pi P4321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1735.rpgleinc'
/copy 'qrpgleref/P2009.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds theTable extname('T1198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1198 LIMIT 1;

theCharVar = 'Hello from P4321';
dsply theCharVar;
P1735();
P2009();
P296();
return;