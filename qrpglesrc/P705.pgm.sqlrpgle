**free

ctl-opt dftactgrp(*no);

dcl-pi P705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T993') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T993 LIMIT 1;

theCharVar = 'Hello from P705';
dsply theCharVar;
P693();
P158();
P136();
return;