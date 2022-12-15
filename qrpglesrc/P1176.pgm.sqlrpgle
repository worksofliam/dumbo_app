**free

ctl-opt dftactgrp(*no);

dcl-pi P1176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1061.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T181 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T181 FROM T181 LIMIT 1;

theCharVar = 'Hello from P1176';
dsply theCharVar;
P1061();
P929();
P6();
return;