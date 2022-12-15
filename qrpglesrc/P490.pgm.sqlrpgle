**free

ctl-opt dftactgrp(*no);

dcl-pi P490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'

dcl-ds T892 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T892 FROM T892 LIMIT 1;

theCharVar = 'Hello from P490';
dsply theCharVar;
P292();
P157();
P450();
return;