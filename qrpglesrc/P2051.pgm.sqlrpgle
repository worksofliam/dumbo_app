**free

ctl-opt dftactgrp(*no);

dcl-pi P2051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P747.rpgleinc'
/copy 'qrpgleref/P1631.rpgleinc'
/copy 'qrpgleref/P1629.rpgleinc'

dcl-ds T1233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1233 FROM T1233 LIMIT 1;

theCharVar = 'Hello from P2051';
dsply theCharVar;
P747();
P1631();
P1629();
return;