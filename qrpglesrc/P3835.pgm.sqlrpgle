**free

ctl-opt dftactgrp(*no);

dcl-pi P3835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2990.rpgleinc'
/copy 'qrpgleref/P2570.rpgleinc'
/copy 'qrpgleref/P2943.rpgleinc'

dcl-ds T1185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1185 FROM T1185 LIMIT 1;

theCharVar = 'Hello from P3835';
dsply theCharVar;
P2990();
P2570();
P2943();
return;