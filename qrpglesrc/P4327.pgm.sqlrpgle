**free

ctl-opt dftactgrp(*no);

dcl-pi P4327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1322.rpgleinc'
/copy 'qrpgleref/P3793.rpgleinc'
/copy 'qrpgleref/P3474.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P4327';
dsply theCharVar;
P1322();
P3793();
P3474();
return;