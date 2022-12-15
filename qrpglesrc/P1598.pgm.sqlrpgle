**free

ctl-opt dftactgrp(*no);

dcl-pi P1598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1084.rpgleinc'
/copy 'qrpgleref/P1178.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds T319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T319 FROM T319 LIMIT 1;

theCharVar = 'Hello from P1598';
dsply theCharVar;
P1084();
P1178();
P336();
return;