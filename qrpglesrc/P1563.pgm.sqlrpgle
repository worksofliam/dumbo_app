**free

ctl-opt dftactgrp(*no);

dcl-pi P1563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'
/copy 'qrpgleref/P528.rpgleinc'

dcl-ds theTable extname('T1238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1238 LIMIT 1;

theCharVar = 'Hello from P1563';
dsply theCharVar;
P647();
P1435();
P528();
return;