**free

ctl-opt dftactgrp(*no);

dcl-pi P1245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'

dcl-ds T858 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T858 FROM T858 LIMIT 1;

theCharVar = 'Hello from P1245';
dsply theCharVar;
P556();
P2();
P460();
return;