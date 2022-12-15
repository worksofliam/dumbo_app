**free

ctl-opt dftactgrp(*no);

dcl-pi P600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T169 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T169 FROM T169 LIMIT 1;

theCharVar = 'Hello from P600';
dsply theCharVar;
P330();
P459();
P2();
return;