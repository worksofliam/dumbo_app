**free

ctl-opt dftactgrp(*no);

dcl-pi P4215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'
/copy 'qrpgleref/P3574.rpgleinc'

dcl-ds T650 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T650 FROM T650 LIMIT 1;

theCharVar = 'Hello from P4215';
dsply theCharVar;
P774();
P670();
P3574();
return;