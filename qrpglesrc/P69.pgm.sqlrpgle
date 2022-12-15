**free

ctl-opt dftactgrp(*no);

dcl-pi P69;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T15 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T15 FROM T15 LIMIT 1;

theCharVar = 'Hello from P69';
dsply theCharVar;
P52();
P32();
P38();
return;