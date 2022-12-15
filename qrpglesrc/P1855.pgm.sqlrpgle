**free

ctl-opt dftactgrp(*no);

dcl-pi P1855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds theTable extname('T381') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T381 LIMIT 1;

theCharVar = 'Hello from P1855';
dsply theCharVar;
P371();
P829();
P36();
return;