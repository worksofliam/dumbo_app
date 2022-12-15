**free

ctl-opt dftactgrp(*no);

dcl-pi P577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P464.rpgleinc'

dcl-ds T23 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T23 FROM T23 LIMIT 1;

theCharVar = 'Hello from P577';
dsply theCharVar;
P112();
P568();
P464();
return;