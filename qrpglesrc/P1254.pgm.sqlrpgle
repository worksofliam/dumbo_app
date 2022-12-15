**free

ctl-opt dftactgrp(*no);

dcl-pi P1254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds theTable extname('T1') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1 LIMIT 1;

theCharVar = 'Hello from P1254';
dsply theCharVar;
P77();
P583();
P302();
return;