**free

ctl-opt dftactgrp(*no);

dcl-pi P4822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2561.rpgleinc'
/copy 'qrpgleref/P3932.rpgleinc'
/copy 'qrpgleref/P4156.rpgleinc'

dcl-ds T994 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T994 FROM T994 LIMIT 1;

theCharVar = 'Hello from P4822';
dsply theCharVar;
P2561();
P3932();
P4156();
return;