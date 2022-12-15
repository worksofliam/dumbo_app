**free

ctl-opt dftactgrp(*no);

dcl-pi P3307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2337.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P2103.rpgleinc'

dcl-ds theTable extname('T1114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1114 LIMIT 1;

theCharVar = 'Hello from P3307';
dsply theCharVar;
P2337();
P239();
P2103();
return;