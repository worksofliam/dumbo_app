**free

ctl-opt dftactgrp(*no);

dcl-pi P1348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P457.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'

dcl-ds T105 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T105 FROM T105 LIMIT 1;

theCharVar = 'Hello from P1348';
dsply theCharVar;
P457();
P295();
P1184();
return;