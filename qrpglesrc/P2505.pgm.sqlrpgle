**free

ctl-opt dftactgrp(*no);

dcl-pi P2505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1322.rpgleinc'
/copy 'qrpgleref/P1629.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P2505';
dsply theCharVar;
P1322();
P1629();
P793();
return;