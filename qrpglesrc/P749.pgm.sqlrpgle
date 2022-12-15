**free

ctl-opt dftactgrp(*no);

dcl-pi P749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds theTable extname('T770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T770 LIMIT 1;

theCharVar = 'Hello from P749';
dsply theCharVar;
P36();
P135();
P339();
return;