**free

ctl-opt dftactgrp(*no);

dcl-pi P2769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P2409.rpgleinc'
/copy 'qrpgleref/P2057.rpgleinc'

dcl-ds T902 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T902 FROM T902 LIMIT 1;

theCharVar = 'Hello from P2769';
dsply theCharVar;
P267();
P2409();
P2057();
return;