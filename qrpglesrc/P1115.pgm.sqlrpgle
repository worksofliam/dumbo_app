**free

ctl-opt dftactgrp(*no);

dcl-pi P1115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'

dcl-ds T969 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T969 FROM T969 LIMIT 1;

theCharVar = 'Hello from P1115';
dsply theCharVar;
P467();
P1059();
P955();
return;