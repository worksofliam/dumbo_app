**free

ctl-opt dftactgrp(*no);

dcl-pi P1013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T403 LIMIT 1;

theCharVar = 'Hello from P1013';
dsply theCharVar;
P506();
P36();
P46();
return;