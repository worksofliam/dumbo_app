**free

ctl-opt dftactgrp(*no);

dcl-pi P2482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'

dcl-ds T632 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T632 FROM T632 LIMIT 1;

theCharVar = 'Hello from P2482';
dsply theCharVar;
P807();
P1373();
P844();
return;