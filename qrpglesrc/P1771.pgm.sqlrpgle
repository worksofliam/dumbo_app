**free

ctl-opt dftactgrp(*no);

dcl-pi P1771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds T23 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T23 FROM T23 LIMIT 1;

theCharVar = 'Hello from P1771';
dsply theCharVar;
P972();
P463();
P417();
return;