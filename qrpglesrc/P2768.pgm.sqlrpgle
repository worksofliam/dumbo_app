**free

ctl-opt dftactgrp(*no);

dcl-pi P2768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'

dcl-ds theTable extname('T1551') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1551 LIMIT 1;

theCharVar = 'Hello from P2768';
dsply theCharVar;
P238();
P1614();
P550();
return;