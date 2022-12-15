**free

ctl-opt dftactgrp(*no);

dcl-pi P2273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds T978 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T978 FROM T978 LIMIT 1;

theCharVar = 'Hello from P2273';
dsply theCharVar;
P128();
P417();
P1300();
return;