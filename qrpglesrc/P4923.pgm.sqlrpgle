**free

ctl-opt dftactgrp(*no);

dcl-pi P4923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P3599.rpgleinc'
/copy 'qrpgleref/P4887.rpgleinc'

dcl-ds T1097 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1097 FROM T1097 LIMIT 1;

theCharVar = 'Hello from P4923';
dsply theCharVar;
P595();
P3599();
P4887();
return;