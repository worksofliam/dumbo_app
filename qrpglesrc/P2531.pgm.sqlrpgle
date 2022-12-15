**free

ctl-opt dftactgrp(*no);

dcl-pi P2531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P2410.rpgleinc'

dcl-ds T1048 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1048 FROM T1048 LIMIT 1;

theCharVar = 'Hello from P2531';
dsply theCharVar;
P15();
P716();
P2410();
return;