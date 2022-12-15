**free

ctl-opt dftactgrp(*no);

dcl-pi P1753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1398.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'

dcl-ds T1120 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1120 FROM T1120 LIMIT 1;

theCharVar = 'Hello from P1753';
dsply theCharVar;
P1398();
P159();
P1274();
return;