**free

ctl-opt dftactgrp(*no);

dcl-pi P564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds T901 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T901 FROM T901 LIMIT 1;

theCharVar = 'Hello from P564';
dsply theCharVar;
P57();
P295();
P254();
return;