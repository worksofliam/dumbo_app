**free

ctl-opt dftactgrp(*no);

dcl-pi P738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'

dcl-ds T232 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T232 FROM T232 LIMIT 1;

theCharVar = 'Hello from P738';
dsply theCharVar;
P362();
P563();
P552();
return;