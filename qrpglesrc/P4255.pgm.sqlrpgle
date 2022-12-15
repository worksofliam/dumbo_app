**free

ctl-opt dftactgrp(*no);

dcl-pi P4255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2003.rpgleinc'
/copy 'qrpgleref/P3608.rpgleinc'
/copy 'qrpgleref/P2648.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P4255';
dsply theCharVar;
P2003();
P3608();
P2648();
return;