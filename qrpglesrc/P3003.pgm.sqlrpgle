**free

ctl-opt dftactgrp(*no);

dcl-pi P3003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1477.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'

dcl-ds theTable extname('T1807') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1807 LIMIT 1;

theCharVar = 'Hello from P3003';
dsply theCharVar;
P1477();
P266();
P949();
return;