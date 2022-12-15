**free

ctl-opt dftactgrp(*no);

dcl-pi P5179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4693.rpgleinc'
/copy 'qrpgleref/P5134.rpgleinc'
/copy 'qrpgleref/P3709.rpgleinc'

dcl-ds T1429 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1429 FROM T1429 LIMIT 1;

theCharVar = 'Hello from P5179';
dsply theCharVar;
P4693();
P5134();
P3709();
return;