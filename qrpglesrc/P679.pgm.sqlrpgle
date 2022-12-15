**free

ctl-opt dftactgrp(*no);

dcl-pi P679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T243 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T243 FROM T243 LIMIT 1;

theCharVar = 'Hello from P679';
dsply theCharVar;
P119();
P221();
P187();
return;