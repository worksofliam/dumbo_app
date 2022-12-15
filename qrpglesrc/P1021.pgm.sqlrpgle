**free

ctl-opt dftactgrp(*no);

dcl-pi P1021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds T593 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T593 FROM T593 LIMIT 1;

theCharVar = 'Hello from P1021';
dsply theCharVar;
P244();
P166();
P18();
return;