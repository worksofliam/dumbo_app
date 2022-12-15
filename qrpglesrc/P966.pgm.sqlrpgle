**free

ctl-opt dftactgrp(*no);

dcl-pi P966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'

dcl-ds theTable extname('T1248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1248 LIMIT 1;

theCharVar = 'Hello from P966';
dsply theCharVar;
P482();
P91();
P626();
return;