**free

ctl-opt dftactgrp(*no);

dcl-pi P2512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1318.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P2512';
dsply theCharVar;
P1318();
P987();
P838();
return;