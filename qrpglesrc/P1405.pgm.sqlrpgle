**free

ctl-opt dftactgrp(*no);

dcl-pi P1405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1356.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'

dcl-ds T802 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T802 FROM T802 LIMIT 1;

theCharVar = 'Hello from P1405';
dsply theCharVar;
P1356();
P707();
P1255();
return;