**free

ctl-opt dftactgrp(*no);

dcl-pi P4735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1881.rpgleinc'
/copy 'qrpgleref/P3733.rpgleinc'
/copy 'qrpgleref/P2920.rpgleinc'

dcl-ds T616 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T616 FROM T616 LIMIT 1;

theCharVar = 'Hello from P4735';
dsply theCharVar;
P1881();
P3733();
P2920();
return;