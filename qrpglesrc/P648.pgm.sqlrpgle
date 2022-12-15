**free

ctl-opt dftactgrp(*no);

dcl-pi P648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds theTable extname('T1466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1466 LIMIT 1;

theCharVar = 'Hello from P648';
dsply theCharVar;
P609();
P335();
P360();
return;