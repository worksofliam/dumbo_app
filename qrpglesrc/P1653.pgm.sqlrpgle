**free

ctl-opt dftactgrp(*no);

dcl-pi P1653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'

dcl-ds T1098 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1098 FROM T1098 LIMIT 1;

theCharVar = 'Hello from P1653';
dsply theCharVar;
P85();
P875();
P495();
return;