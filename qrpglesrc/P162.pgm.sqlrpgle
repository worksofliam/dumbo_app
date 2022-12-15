**free

ctl-opt dftactgrp(*no);

dcl-pi P162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds T1130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1130 FROM T1130 LIMIT 1;

theCharVar = 'Hello from P162';
dsply theCharVar;
P110();
P44();
P91();
return;