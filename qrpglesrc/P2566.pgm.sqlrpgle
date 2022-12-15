**free

ctl-opt dftactgrp(*no);

dcl-pi P2566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1582.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'

dcl-ds T1147 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1147 FROM T1147 LIMIT 1;

theCharVar = 'Hello from P2566';
dsply theCharVar;
P1582();
P289();
P1472();
return;