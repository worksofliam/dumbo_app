**free

ctl-opt dftactgrp(*no);

dcl-pi P1679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds theTable extname('T1045') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1045 LIMIT 1;

theCharVar = 'Hello from P1679';
dsply theCharVar;
P770();
P588();
P266();
return;