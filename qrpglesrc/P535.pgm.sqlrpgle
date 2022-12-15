**free

ctl-opt dftactgrp(*no);

dcl-pi P535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds theTable extname('T1184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1184 LIMIT 1;

theCharVar = 'Hello from P535';
dsply theCharVar;
P412();
P333();
P75();
return;