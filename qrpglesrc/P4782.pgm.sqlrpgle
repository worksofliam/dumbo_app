**free

ctl-opt dftactgrp(*no);

dcl-pi P4782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2724.rpgleinc'
/copy 'qrpgleref/P1366.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds T312 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T312 FROM T312 LIMIT 1;

theCharVar = 'Hello from P4782';
dsply theCharVar;
P2724();
P1366();
P1042();
return;