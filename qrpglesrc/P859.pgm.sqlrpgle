**free

ctl-opt dftactgrp(*no);

dcl-pi P859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds T702 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T702 FROM T702 LIMIT 1;

theCharVar = 'Hello from P859';
dsply theCharVar;
P793();
P367();
P760();
return;