**free

ctl-opt dftactgrp(*no);

dcl-pi P3387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P3356.rpgleinc'

dcl-ds theTable extname('T927') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T927 LIMIT 1;

theCharVar = 'Hello from P3387';
dsply theCharVar;
P713();
P859();
P3356();
return;