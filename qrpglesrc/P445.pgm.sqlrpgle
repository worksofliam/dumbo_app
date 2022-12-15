**free

ctl-opt dftactgrp(*no);

dcl-pi P445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'

dcl-ds T962 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T962 FROM T962 LIMIT 1;

theCharVar = 'Hello from P445';
dsply theCharVar;
P69();
P10();
P398();
return;