**free

ctl-opt dftactgrp(*no);

dcl-pi P2532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P885.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'

dcl-ds T21 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T21 FROM T21 LIMIT 1;

theCharVar = 'Hello from P2532';
dsply theCharVar;
P885();
P859();
P327();
return;