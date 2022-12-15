**free

ctl-opt dftactgrp(*no);

dcl-pi P1243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'

dcl-ds T1814 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1814 FROM T1814 LIMIT 1;

theCharVar = 'Hello from P1243';
dsply theCharVar;
P578();
P504();
P151();
return;