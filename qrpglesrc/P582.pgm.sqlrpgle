**free

ctl-opt dftactgrp(*no);

dcl-pi P582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P582';
dsply theCharVar;
P205();
P342();
P11();
return;