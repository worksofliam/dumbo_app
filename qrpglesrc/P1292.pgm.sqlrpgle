**free

ctl-opt dftactgrp(*no);

dcl-pi P1292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'

dcl-ds theTable extname('T1659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1659 LIMIT 1;

theCharVar = 'Hello from P1292';
dsply theCharVar;
P370();
P20();
P990();
return;