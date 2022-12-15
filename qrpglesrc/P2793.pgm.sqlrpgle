**free

ctl-opt dftactgrp(*no);

dcl-pi P2793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2347.rpgleinc'
/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds T1241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1241 FROM T1241 LIMIT 1;

theCharVar = 'Hello from P2793';
dsply theCharVar;
P2347();
P1261();
P288();
return;