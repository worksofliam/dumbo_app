**free

ctl-opt dftactgrp(*no);

dcl-pi P5590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4509.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'
/copy 'qrpgleref/P1587.rpgleinc'

dcl-ds T1527 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1527 FROM T1527 LIMIT 1;

theCharVar = 'Hello from P5590';
dsply theCharVar;
P4509();
P2070();
P1587();
return;