**free

ctl-opt dftactgrp(*no);

dcl-pi P2568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1649.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P1179.rpgleinc'

dcl-ds T1732 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1732 FROM T1732 LIMIT 1;

theCharVar = 'Hello from P2568';
dsply theCharVar;
P1649();
P340();
P1179();
return;