**free

ctl-opt dftactgrp(*no);

dcl-pi P5472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1518.rpgleinc'
/copy 'qrpgleref/P5005.rpgleinc'
/copy 'qrpgleref/P2477.rpgleinc'

dcl-ds theTable extname('T830') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T830 LIMIT 1;

theCharVar = 'Hello from P5472';
dsply theCharVar;
P1518();
P5005();
P2477();
return;