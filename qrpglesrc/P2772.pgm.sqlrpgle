**free

ctl-opt dftactgrp(*no);

dcl-pi P2772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2465.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P2030.rpgleinc'

dcl-ds T788 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T788 FROM T788 LIMIT 1;

theCharVar = 'Hello from P2772';
dsply theCharVar;
P2465();
P149();
P2030();
return;