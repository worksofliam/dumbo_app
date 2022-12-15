**free

ctl-opt dftactgrp(*no);

dcl-pi P1416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'

dcl-ds T228 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T228 FROM T228 LIMIT 1;

theCharVar = 'Hello from P1416';
dsply theCharVar;
P967();
P665();
P1192();
return;