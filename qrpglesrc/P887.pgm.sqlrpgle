**free

ctl-opt dftactgrp(*no);

dcl-pi P887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P688.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'

dcl-ds T639 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T639 FROM T639 LIMIT 1;

theCharVar = 'Hello from P887';
dsply theCharVar;
P688();
P519();
P724();
return;