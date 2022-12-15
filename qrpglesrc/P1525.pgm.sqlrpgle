**free

ctl-opt dftactgrp(*no);

dcl-pi P1525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P1345.rpgleinc'
/copy 'qrpgleref/P1394.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P1525';
dsply theCharVar;
P665();
P1345();
P1394();
return;