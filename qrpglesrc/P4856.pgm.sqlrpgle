**free

ctl-opt dftactgrp(*no);

dcl-pi P4856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1953.rpgleinc'
/copy 'qrpgleref/P3182.rpgleinc'
/copy 'qrpgleref/P528.rpgleinc'

dcl-ds T727 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T727 FROM T727 LIMIT 1;

theCharVar = 'Hello from P4856';
dsply theCharVar;
P1953();
P3182();
P528();
return;