**free

ctl-opt dftactgrp(*no);

dcl-pi P1261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'

dcl-ds theTable extname('T612') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T612 LIMIT 1;

theCharVar = 'Hello from P1261';
dsply theCharVar;
P1070();
P136();
P381();
return;